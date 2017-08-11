package com.tansun.easycare.modules.credit.service.impl;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.framework.util.CreditPropertyUtil;
import com.tansun.easycare.framework.util.DownFile;
import com.tansun.easycare.framework.util.HtmlRegxUtil;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;
import com.tansun.easycare.modules.credit.service.ICreditRhEnterpriseService;
import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;
import java.util.Map;

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


}
