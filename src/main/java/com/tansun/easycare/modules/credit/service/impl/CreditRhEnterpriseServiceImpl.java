package com.tansun.easycare.modules.credit.service.impl;


import com.tansun.di.crawler.table.handle.enterprise.ETableHandle;
import com.tansun.easycare.common.Constant;
import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.framework.util.*;
import com.tansun.easycare.modules.credit.domain.enterprise.EnterpriseDataCapture;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.service.ICreditRhEnterpriseService;
import com.tansun.easycare.modules.sys.entity.User;
import com.tansun.easycare.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.*;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

/**
 * Author：jennie
 * Date：2017/6/26
 * Time: 15:38
 */
@Service
@Transactional(readOnly = true)
public class CreditRhEnterpriseServiceImpl implements ICreditRhEnterpriseService {

    private static Logger logger= LoggerFactory.getLogger(CreditRhEnterpriseServiceImpl.class);

    @Autowired
    private BaseService baseService;

    @Autowired
	private ETableAdapter tableAdapter;

    @Override
    public Page<EnterpriseDataCapture> list(Page<EnterpriseDataCapture> page, EnterpriseDataCapture
            enterpriseDataCapture) throws Exception {
        enterpriseDataCapture.setPage(page);
        List list = baseService.queryForListBySql("creditRhEnterpriseMapper.findCreditEnterpriseList", enterpriseDataCapture);
        page.setList(list);
        return page;
    }

    @Override
    public String enterpriseSearch(String html, HttpServletRequest request) throws Exception {
        List<String> cssLinks = HtmlRegxUtil.matchSuffix(html,"css");
        List<String> scriptLinks = HtmlRegxUtil.matchSuffix(html,"js");
        List<String> imgLinks=HtmlRegxUtil.matchSuffix(html,"gif");
        String proAddress = CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.search.page2");
        String basePath = request.getSession().getServletContext().getRealPath(File.separator);
        //项目存放爬虫下来的资源文件绝对地址目录包含：css、js、img
        String cssFilePath=basePath+"static"+File.separator+"credit"+File.separator+"css"+File.separator;
        String jsFilePath=basePath+"static"+File.separator+"credit"+File.separator+"js"+File.separator;
        String imgFilePath=basePath+"static"+File.separator+"credit"+File.separator+"img"+File.separator;
        logger.info("本地图片文件地址===========："+imgFilePath);
        //css、js、img html内容替换成本地相对路径
        String cssPath=request.getContextPath()+File.separator+"static"+File.separator+"credit"+File.separator+"css"+File.separator;
        String jsPath=request.getContextPath()+File.separator+"static"+File.separator+"credit"+File.separator+"js"+File.separator;
        String imgPath=request.getContextPath()+File.separator+"static"+File.separator+"credit"+File.separator+"img"+File.separator;
        logger.info("图片替换地址============="+imgPath);

        String rhProtectName = CreditPropertyUtil.instance.getPropertyValue("credit.rh.project.name");
        String content="";
        String fileName="";
        for (String css:cssLinks){
            content = DownFile.getFileFromNetByUrl(proAddress+"/" + css);
            fileName=css.substring(css.lastIndexOf("/")+1);
            DownFile.writeFileToDisk(content,cssFilePath,fileName);
            html= StringUtils.replace(html, File.separator+rhProtectName+File.separator+css, cssPath + fileName);
        }

        for (String script:scriptLinks){
            content = DownFile.getFileFromNetByUrl(proAddress+"/" + script);
            fileName=script.substring(script.lastIndexOf("/")+1);
            DownFile.writeFileToDisk(content,jsFilePath,fileName);
            html=StringUtils.replace(html, File.separator+rhProtectName+File.separator+script,jsPath+fileName);
        }
        for (String img:imgLinks){
            logger.info("img标签抓取连接===="+img);
            logger.info("图片下载地址==================："+proAddress +"/"+ img);
            fileName=img.substring(img.lastIndexOf("/")+1);
            logger.info("图片文件名==================："+fileName);
            DownFile.getImgFileFromNetByUrl(proAddress +"/"+ img,imgFilePath,fileName);
            html=StringUtils.replace(html,img,imgPath+fileName);
            html=StringUtils.replace(html,File.separator+rhProtectName
                    +File.separator+imgPath+fileName,imgPath+fileName);
            html=StringUtils.replace(html,".."+File.separator
                    +imgPath+fileName,imgPath+fileName);
        }
        return html;
    }

    
    
    
    @Override
    public void jsoupToObject(String rawText) {
		String reportId = UUID.randomUUID().toString().toLowerCase();	
		List<Object> allObjectList=new ArrayList<Object>();
		Document root = Jsoup.parse(rawText);
		Elements bodys = root.select("body > table");
		Elements trEls = root.select("body").select("table");
		Iterator<Element> itable = trEls.iterator();


		allObjectList.addAll(parseAndSaveFetch(trEls,reportId));
		allObjectList.addAll(parseAndSave(itable,reportId));

		if(allObjectList.size()>0)
		{
			try {
				baseService.batchSave(allObjectList);
			} catch (Exception e1) {
				e1.printStackTrace();
			}
		}
		System.out.println("end");
	}

    @Override
    public void saveDataCaptureAndLog(EnterpriseDataCapture dataCapture,
                                      String username, String pwd, String outCode,
                                      User user, String resultHtml) throws Exception {
        dataCapture.setId(UUID.randomUUID().toString().replaceAll("-",""));
        dataCapture.setCreateUser(user.getId());
        dataCapture.setSearcherLoginRhUserId(username);
        dataCapture.setSearcherLoginRhPassword(pwd);
        dataCapture.setCaptureData(resultHtml);
        dataCapture.setCreateDate(new Date());
        dataCapture.setSearcherOrgCode(outCode);
        dataCapture.setSearchType("20");
        baseService.insertBySql("creditRhEnterpriseMapper.saveEnterprise",dataCapture);

        RhSearchLog searchLog=new RhSearchLog();
        searchLog.setId(UUID.randomUUID().toString().replaceAll("-",""));
        searchLog.setCreateDate(new Date());
        searchLog.setSearcherLoginIp(UserUtils.getUser().getLoginIp());
        searchLog.setSearcherLoginRhPassword(pwd);
        searchLog.setSearcherLoginRhUserId(username);
        searchLog.setQuerySeri(MsgIdUtil.randomForNum(7));
        searchLog.setCreateUser(user.getId());
        searchLog.setCreateUserName(user.getName());
        searchLog.setPeFlag(Constant.CREDIT_ENTERPRISE);
        searchLog.setSearcherNo(dataCapture.getLoanCardNo());
        Document doc = Jsoup.parse(resultHtml);
        String searcher = doc.select("span.black").first().text();
        searcher=searcher.substring(2,searcher.length());
        searchLog.setSearcher(searcher);
        searchLog.setSearchType("中征码");
        baseService.save(searchLog);
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
	private List<Object> parseAndSave(Iterator<Element> tableElementIterator,String reportId) {
		lock1.lock();
		try {
			List<Object> allObjectList=new ArrayList<Object>();
			while(tableElementIterator.hasNext())
			{
				Element element=tableElementIterator.next();
				if(!element.text().trim().equals("")&&!element.text().trim().equals(" "))
				{
					System.out.println(element.text());
					ETableHandle handle = tableAdapter.getTableHandle(element);
					if(handle==null)
					{
						continue;
					}
					handle.setReportId(reportId);
					try {
	//					handle.save();
						allObjectList.addAll(handle.getList());
						System.out.println(allObjectList.size());
					} catch (Exception e) {

					}
				}
			}
			return allObjectList;
		} finally {
			lock1.unlock();
		}
		
	}

	private List<Object> parseAndSaveFetch(Elements tableElementIterator,String reportId) {
		lock2.lock();
		try {
			List<ETableHandle> handleList = tableAdapter.getFetchHandle();
			List<Object> allObjectList=new ArrayList<Object>();
			for(ETableHandle handle:handleList)
			{
				handle.setReportId(reportId);
				allObjectList.addAll(handle.commonParse(tableElementIterator, reportId));
			}
			return allObjectList;
		} finally {
			lock2.unlock();
		}

	}
}
