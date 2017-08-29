package com.tansun.easycare.modules.credit.service.impl;


import com.tansun.di.crawler.table.handle.people.TableHandle;
import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.modules.credit.domain.PersonDataCapture;
import com.tansun.easycare.modules.credit.service.ICreditRhPersonService;
import com.tansun.easycare.modules.credit.service.IPeopleSaveService;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import javax.annotation.Resource;
import com.tansun.easycare.framework.util.TableAdapter;

/**
 * Created by admin on 2017/6/14.
 */
@Service
@Transactional(readOnly = true)
public class CreditRhPersonServiceImpl implements ICreditRhPersonService {

    @Autowired
    private BaseService baseService;
    
    @Autowired
	private TableAdapter tableAdapter;
    
	@Resource(name = "titleMap")
	private Map<String, String> titleMap;
	
	@Autowired
    private IPeopleSaveService peopleSaveService;

    /**
     * 个人征信查询列表
     * @return
     */
    public Page<PersonDataCapture> findRhPersonSearchList(PersonDataCapture dataCapture, Page<PersonDataCapture> page) throws Exception {
        dataCapture.setPage(page);
        List<PersonDataCapture> list = baseService.queryForListBySql("creditRhPersonMapper.selectCreditPersonList", dataCapture);
        page.setList(list);
        return page;
    }
    
    @Override
    public void jsoupToObject(String rawText) {
		String reportId = UUID.randomUUID().toString().toLowerCase();	
		if(rawText.indexOf("个人信用报告")!=-1)
		{
			List<Object> allObjectList=new ArrayList<Object>();
			List<Element> trElementList = new ArrayList<Element>();
			List<Element> tableElementList = new ArrayList<Element>();
			String[] startTitle=titleMap.get("_start").split(",");
			String[] endTitle=titleMap.get("_end").split(",");
			Document root = Jsoup.parse(rawText);
			Elements trEls = root.select("body > table > tbody > tr");
			Iterator<Element> itable = trEls.iterator();
			boolean dk=false;
			while(itable.hasNext()){
				Element element=itable.next();
				String text=element.text();
				boolean next=false;
				for(String sTitle:startTitle)
				{
					if(text.equals(sTitle))
					{
						dk=true;
						next=true;
						break;
					}
				}
				for(String eTitle:endTitle)
				{
					if(text.equals(eTitle))
					{
						dk=false;
						next=true;
						break;
					}
				}				
				if(next)
				{
					continue;
				}
				if(dk)
				{
					trElementList.add(element);
				}
				else
				{
					Elements tableElement= element.select("table");
					if(tableElement.size()>0)
					{
						tableElementList.addAll(tableElement);
					}
					
				}
			}

			allObjectList.addAll(parseAndSaveTr(trElementList,reportId));
			allObjectList.addAll(parseAndSave(tableElementList,reportId));
			if(allObjectList.size()>0)
			{
				try {
					peopleSaveService.savePeopleCreditDatasList(allObjectList);
				} catch (Exception e) {
					e.printStackTrace();
				}
			}
			System.out.println("end");

		}	
	}


	
	//重入锁
	 private Lock lock1 = new ReentrantLock();
	//重入锁
	 private Lock lock2 = new ReentrantLock();
	 
	 
	/**
	 * @method 解析表格类型数据
	 * @param tableElementList:table类型Element
	 */
	 //synchronized
	private List<Object> parseAndSave(List<Element> tableElementList,String reportId) {
		lock1.lock();
		try {
			List<Object> allObjectList=new ArrayList<Object>();
			Iterator<Element> elementList=tableElementList.iterator();
			while(elementList.hasNext())
			{
				Element element=elementList.next();
				
				TableHandle handle = tableAdapter.getTableHandle(element);
				if(handle==null)
				{
					continue;
				}
				handle.setReportId(reportId);
				try {
//					handle.save();
					allObjectList.addAll(handle.getList());
				} catch (Exception e) {
					
				}
			}
			return allObjectList;
		} finally {
			lock1.unlock();
		}
		
	}
	
	
	/**
	 * @method 解析文件和表格类型数据
	 * @param trElementList：tr类型Element
	 */
	private List<Object> parseAndSaveTr(List<Element> trElementList,String reportId) {
		//唯一标识
		lock2.lock();
		try {
			String onlyId=null;
			Map<String, Object> objectMap =new HashMap<String, Object>();
			List<Object> allObjectList=new ArrayList<Object>();
			//遍历trElementList集合
			Iterator<Element> elementList=trElementList.iterator();
			while(elementList.hasNext())
			{
				Element element=elementList.next();
//				System.out.println(tr.text());
				//把解析html页面定位到table标签
				Elements tableElementList=element.select("table");
				
				//根据tableElementList大小,有值
				if(tableElementList.size()==1)
				{
					
					TableHandle handle = tableAdapter.getTableHandle(tableElementList.get(0));
					if(handle==null)
					{
						continue;
					}
					handle.setReportId(reportId);
					handle.setOnlyId(onlyId);
					if(objectMap.size()>0)
					{
						handle.setHandleMap(objectMap);
					}
					try {
						allObjectList.addAll(handle.getList());					
					} catch (Exception e) {
						
					}
					objectMap.clear();
				}
				else
				{
					objectMap.clear();
					if(!element.text().trim().equals("")&&!element.text().trim().equals(" "))
					{
						TableHandle handle = tableAdapter.getTableHandle(element);
						if(handle==null)
						{
							continue;
						}
						handle.setReportId(reportId);
						onlyId=UUID.randomUUID().toString().toLowerCase();	
						handle.setOnlyId(onlyId);
						
						try {
							if(element.text().indexOf("账户状态")!=-1)
							{
								allObjectList.addAll(handle.getList());
							}
							else
							{
								objectMap.putAll(handle.getMap());
							}					
						} catch (Exception e) {
							
						}
					}
				}
				
			}
			return allObjectList;
		} finally {
			lock2.unlock();
		}
		
	}
}
