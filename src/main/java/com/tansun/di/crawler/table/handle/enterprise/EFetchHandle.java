package com.tansun.di.crawler.table.handle.enterprise;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.UUID;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import com.tansun.easycare.framework.util.BeanUtil;


public class EFetchHandle  extends ETableHandle {

	@Override
	public List<Object> commonParse(Elements list, String reportNo) {
		List<Object> objList = new  ArrayList<Object>();


			Element table = filter(list);
			
			if (table != null && getHeadMapping() != null) {
				if(getFixKeyValue().equals("tr"))
				{
					objList=getBeanListByTr(table);
				}
				else
				{
					objList=getBeanList(table);
				}
			}

		return objList;
	}
	
	
	private Element filter(Elements list) {
		List<Element> ret = new ArrayList<Element>();
		boolean isStart=false;
		boolean isEnd=false;
		for (Element element : list) {

			Element a = element.select("tbody").first();
			if(a!=null)
			{
				System.out.println(a.text());
				a=a.select("div").first();
				String text = "";
				if (a != null) {
					text = a.text();
					text = text.replace(" ", "");
					System.out.println(text);
					if (text.equals(getStartTitle())) {
						isStart = true;
					} else if (text.equals(getEndTitle())) {
						isStart = false;
						isEnd=true;
						break;
					}
				}
				if(isStart)
				{
					ret.add(element);
				}
			}
		}
		if (ret.size()>0&&isEnd)
		{
			String head = getHead()[0];
			if (ret != null && ret.size() > 0) {
				return fetchFormInfo(ret, head);
			}
		}

		return null;
	}
	
	/**
	 * 获取表单信息
	 * 
	 * @param list
	 * @param key
	 * @return
	 */
	public Element fetchFormInfo(List<Element> list, String key) {
		if (list == null)
			return null;

		for (int i = 0; i < list.size(); i++) {
			Element element = list.get(i);
			Element a = element.select("tbody").first();
			if(a!=null)
			{
				a = a.select("div").first();
				String text = "";
				if (a != null)
					text = a.text();
				if (text.equals(key)) {
					System.out.println(element.text());
					System.out.println("  -----------------list size:"+list.size());
					// 数据在下一个表格里
					if (i + 1 < list.size()) {
						Element htmlTable = list.get(i + 1);
						if (htmlTable != null)
							return htmlTable;
					}
				}
			}
		}
		return null;
	}
	
	/**
	 * 解析数据给bean对象
	 * @param table
	 * @param fs 列
	 * @param beanName
	 * @return 
	 */
	@Override
	public List<Object> getBeanList(Element table) {
		List<Object> ret = new ArrayList<Object>();

		String error="";
		try {
			Elements trs = table.select("tbody").first().select("tr");
			ListIterator<Element> listIterator = trs.listIterator();

			int i = 0;
			while (listIterator.hasNext()) {

				Element element = listIterator.next();
				// 从第2行开始!!!
				if (i >= startrow) {
					// 一行一个高管
					// 授信机构 种类 币种 借据金额 借据余额
					// 放款日期 到期日期 五级分类 贷款形式 担保 展期
					Class<?> clazz;
					String beanName=getModel();
					
					clazz = Class.forName(beanName);
					

					Object obj = (Object) clazz.newInstance();
					
					error=beanName;
					
					Elements tds = element.select("td");

					String[] fs=getHeadMapping();
					
					for (int k = 0; k < fs.length; k++) {
						String f = fs[k].trim();
						// 首字母小写
						f=f.substring(0,1).toLowerCase()+f.substring(1);
						String value = tds.eq(k).text();
						value = value.replace(" ", "");

						BeanUtil.set(obj, f, value);
					}

					// 主键
					BeanUtil.set(obj, getPrimaryKey(), UUID.randomUUID().toString().toLowerCase());
					System.out.println("reportId:"+getReportId());
					BeanUtil.set(obj, "reportId", getReportId());
					BeanUtil.set(obj, "updateDate", new Date());
					
					
					
					if(getFixKeyValue()!=null)
					{
						if(!getFixKeyValue().trim().equals(""))
						{
							String[] kv=getFixKeyValue().split("=");
							BeanUtil.set(obj, kv[0], kv[1]);
						}
					}
					ret.add(obj);
				}

				i++;
			}
		} catch (Exception e) {
			e.printStackTrace();
			System.err.println(error);
		}
		return ret;
	}
	
	
	/**
	 * 解析数据给bean对象--		   
	 *             2014 - 09	2014 - 12	2015 - 03	2015 - 06
	 * 全部负债余额 	   1,160.00	    1,100.00	1,040.00	984.00
	 * 不良负债余额	    330.00	     310.00	     290.00	    274.00
	 * 
	 * @param table
	 * @param fs 列
	 * @param beanName
	 * @return 
	 */
	public List<Object> getBeanListByTr(Element table) {

		Map<String,Object> map=new HashMap<String,Object>();
		try {
			Elements trs = table.select("tbody").first().select("tr");
			ListIterator<Element> listIterator = trs.listIterator();

			int i = 0;
			int rowIndex=0;
			int row = 0;
			Class<?> clazz;
			String beanName=getModel();
			clazz = Class.forName(beanName);
			String[] fs=getHeadMapping();
			
			while (listIterator.hasNext()) {

				Element element = listIterator.next();
				
				if (i >= startrow) {
					
					
					Elements tds = element.select("td");
					if(i%3==0)
					{
						row++;
						rowIndex=0;
					}
					for(int col=1;col<tds.size();col++)
					{
						String key=row+"-"+col;
						Object obj=map.get(key);
						if(obj==null)
						{
							obj = (Object) clazz.newInstance();
							BeanUtil.set(obj, getPrimaryKey(), UUID.randomUUID().toString().toLowerCase());
							BeanUtil.set(obj, "reportId", getReportId());
							BeanUtil.set(obj, "updateDate", new Date());
						}
						String f = fs[rowIndex].trim();
						f=f.substring(0,1).toLowerCase()+f.substring(1);
						String value = tds.get(col).text();
						value = value.replace(" ", "");
						BeanUtil.set(obj, f, value);
						map.put(key, obj);
					}
					
					
				}

				i++;
				rowIndex++;
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return new ArrayList<Object>(map.values());
	}
	
	


	@Override
	int getTableType() {
		// TODO Auto-generated method stub
		return 0;
	}


	@Override
	public String process(Element element) {
		// TODO Auto-generated method stub
		return null;
	}


	@Override
	public String getHeadFormated(Element table) {
		// TODO Auto-generated method stub
		return null;
	}
}
