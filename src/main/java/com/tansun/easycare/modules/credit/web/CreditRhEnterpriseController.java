package com.tansun.easycare.modules.credit.web;

import com.tansun.easycare.common.Constant;
import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.web.BaseController;
import com.tansun.easycare.framework.httpspider.EnterpriseCredit;
import com.tansun.easycare.framework.httpspider.PersonCredit;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.framework.util.CreditPropertyUtil;
import com.tansun.easycare.framework.util.DownFile;
import com.tansun.easycare.framework.util.HtmlRegxUtil;
import com.tansun.easycare.framework.util.MsgIdUtil;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;
import com.tansun.easycare.modules.credit.domain.PersonDataCapture;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.domain.RhUser;
import com.tansun.easycare.modules.credit.service.ICreditRhEnterpriseService;
import com.tansun.easycare.modules.sys.entity.Dict;
import com.tansun.easycare.modules.sys.entity.User;
import com.tansun.easycare.modules.sys.utils.DictUtils;
import com.tansun.easycare.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.*;

/**
 * Author：jennie
 * Date：2017/6/26
 * Time: 15:36
 */
@Controller
@RequestMapping("${adminPath}/rh/enterprise")
public class CreditRhEnterpriseController extends BaseController {

    @Autowired
    private ICreditRhEnterpriseService creditRhEnterpriseService;

    @Autowired
    private BaseService baseService;

    @RequestMapping(value = "list")
    public String list(HttpServletRequest request, HttpServletResponse response, Model model,
                       EnterpriseDataCapture enterpriseDataCapture){
        try {
            String roleId = UserUtils.getUser().getRoleList().get(0).getId();
            if (StringUtils.isNotEmpty(roleId) && roleId.equals("1")) {
                //系统管理员
                Page<EnterpriseDataCapture> page = creditRhEnterpriseService.list(new Page<EnterpriseDataCapture>(request, response), enterpriseDataCapture);
                model.addAttribute("page", page);
            } else {
                enterpriseDataCapture.setCreateUser(UserUtils.getUser().getId());
                Page<EnterpriseDataCapture> page = creditRhEnterpriseService.list(new Page<EnterpriseDataCapture>(request, response), enterpriseDataCapture);
                model.addAttribute("page", page);
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        List<Dict> enterpriseQueryReason = DictUtils.getDictList("enterprise_query_reason");//查询原因
        model.addAttribute("enterpriseQueryReason",enterpriseQueryReason);
        return "/modules/credit/enterprise/enterprise_list";
    }

    @RequestMapping(value = "form")
    public String form(Model model){
        EnterpriseDataCapture dataCapture=new EnterpriseDataCapture();
        model.addAttribute("dataCapture",dataCapture);
        return "/modules/credit/enterprise/enterprise_form";
    }

    @RequestMapping(value = "searchCredit")
    public String searchCredit(EnterpriseDataCapture dataCapture,Model model,HttpServletRequest request){
        User user = UserUtils.getUser();
        String code = user.getCompany().getCode();
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("orgCode",code);
        map.put("type", Constant.CREDIT_ENTERPRISE);
        map.put("standInd","1");
        String resultHtml="";
        String username="";
        String password="";
        String outCode="";
        try{
            List<RhUser> rhUsers = baseService.queryForListBySql("creditRhUserMapper.selectRhUser",map);
            if(rhUsers!=null&&rhUsers.size()>0){
                username=rhUsers.get(0).getUserId();
                password=rhUsers.get(0).getPassword();
                outCode=rhUsers.get(0).getOutOrgCode();
            }
            EnterpriseCredit enterprise=new EnterpriseCredit();
            String login = enterprise.login(username, password, outCode);
            Map<String,Object> paramMap=new HashMap<String,Object>();
            paramMap.put("outCode",outCode);
            paramMap.put("loancardcode",dataCapture.getLoanCardNo());
            paramMap.put("searchReasonCode",dataCapture.getSearchReason());
            String html = enterprise.enterpriseSearch(paramMap);
          /*  List<String> cssLinks = HtmlRegxUtil.match(html, "link", "href");
            List<String> scriptLinks=HtmlRegxUtil.match(html,"script","src");
            List<String> imgLinks=HtmlRegxUtil.match(html,"img","src");
            List<String> inputLinks=HtmlRegxUtil.match(html,"input","src");*/
            List<String> cssLinks = HtmlRegxUtil.matchSuffix(html,"css");
            List<String> scriptLinks = HtmlRegxUtil.matchSuffix(html,"js");
            List<String> imgLinks=HtmlRegxUtil.matchSuffix(html,"gif");
            String proAddress = CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.search.page2");
            String proAddress2 = CreditPropertyUtil.instance.getPropertyValue("credit.enterprise.search.page3");
            String basePath = request.getSession().getServletContext().getRealPath(File.separator);
            String cssFilePath=basePath+"static"+File.separator+"credit"+File.separator+"css"+File.separator;
            String jsFilePath=basePath+"static"+File.separator+"credit"+File.separator+"js"+File.separator;
            String imgFilePath=basePath+"static"+File.separator+"credit"+File.separator+"img"+File.separator;
            logger.info("本地图片文件地址===========："+imgFilePath);
            String cssPath=request.getContextPath()+File.separator+"static"+File.separator+"credit"+File.separator+"css"+File.separator;
            String jsPath=request.getContextPath()+File.separator+"static"+File.separator+"credit"+File.separator+"js"+File.separator;
            String imgPath=request.getContextPath()+File.separator+"static"+File.separator+"credit"+File.separator+"img"+File.separator;
            logger.info("图片替换地址============="+imgPath);
            for (String css:cssLinks){
                String cssContent = DownFile.getFileFromNetByUrl(proAddress+"/" + css);
                String fileName=css.substring(css.lastIndexOf("/")+1);
                DownFile.writeFileToDisk(cssContent,cssFilePath,fileName);
                html= StringUtils.replace(html, File.separator+CreditPropertyUtil.instance.getPropertyValue("credit.rh.project.name")+File.separator+css, cssPath + fileName);
            }
            for (String script:scriptLinks){
                String jsContent = DownFile.getFileFromNetByUrl(proAddress+"/" + script);
                String fileName=script.substring(script.lastIndexOf("/")+1);
                DownFile.writeFileToDisk(jsContent,jsFilePath,fileName);
                html=StringUtils.replace(html, File.separator+CreditPropertyUtil.instance.getPropertyValue("credit.rh.project.name")+File.separator+script,jsPath+fileName);
            }
            for (String img:imgLinks){
                logger.info("img标签抓取连接===="+img);
               // byte[] imgContent = DownFile.getImgFileFromNetByUrl(proAddress +"/"+ img,imgFilePath,fileName);
                logger.info("图片下载地址==================："+proAddress +"/"+ img);
                String fileName=img.substring(img.lastIndexOf("/")+1);
                logger.info("图片文件名==================："+fileName);
                DownFile.getImgFileFromNetByUrl(proAddress +"/"+ img,imgFilePath,fileName);
                html=StringUtils.replace(html,img,imgPath+fileName);
                html=StringUtils.replace(html,File.separator+CreditPropertyUtil.instance.getPropertyValue("credit.rh.project.name")
                        +File.separator+File.separator+imgPath+fileName,imgPath+fileName);
                html=StringUtils.replace(html,".."+File.separator
                        +File.separator+imgPath+fileName,imgPath+fileName);
            }
           /* for (String img:inputLinks){
                logger.info("img标签抓取连接===="+img);
                // byte[] imgContent = DownFile.getImgFileFromNetByUrl(proAddress +"/"+ img,imgFilePath,fileName);
                logger.info("图片下载地址==================："+proAddress +"/"+ img);
                String fileName=img.substring(img.lastIndexOf("/")+1);
                logger.info("图片文件名==================："+fileName);
                DownFile.getImgFileFromNetByUrl(proAddress2 +"/"+ img,imgFilePath,fileName);
                html=StringUtils.replace(html,img,imgPath+fileName);
            }*/
            model.addAttribute("resultHtml",html);
            dataCapture.setId(UUID.randomUUID().toString().replaceAll("-",""));
            dataCapture.setCreateUser(user.getId());
            dataCapture.setSearcherLoginRhUserId(username);
            dataCapture.setSearcherLoginRhPassword(password);
            dataCapture.setCaptureData(html);
            dataCapture.setCreateDate(new Date());
            dataCapture.setSearcherOrgCode(outCode);
            dataCapture.setSearchType("20");
            baseService.insertBySql("creditRhEnterpriseMapper.saveEnterprise",dataCapture);

            RhSearchLog searchLog=new RhSearchLog();
            searchLog.setId(UUID.randomUUID().toString().replaceAll("-",""));
            searchLog.setCreateDate(new Date());
            searchLog.setSearcherLoginIp(UserUtils.getUser().getLoginIp());
            searchLog.setSearcherLoginRhPassword(password);
            searchLog.setSearcherLoginRhUserId(username);
            searchLog.setQuerySeri(MsgIdUtil.randomForNum(7));
            searchLog.setCreateUser(user.getId());
            searchLog.setCreateUserName(user.getName());
            searchLog.setPeFlag(Constant.CREDIT_ENTERPRISE);
            searchLog.setCreateUserName(user.getName());
            searchLog.setSearcherNo(dataCapture.getLoanCardNo());
            searchLog.setSearcher("企业");
            searchLog.setSearchType("中征码");
            baseService.save(searchLog);
        }catch (Exception e){
           logger.info(e.getMessage(),e);
        }
        return "/modules/credit/person/person_credit_show";
    }

    /**
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "showCredit")
    public String showCredit(@RequestParam("id") String id, Model model){
        String resultHtml="";
        EnterpriseDataCapture da=new EnterpriseDataCapture();
        try {
            da= (EnterpriseDataCapture) baseService.find(EnterpriseDataCapture.class,id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("resultHtml",da.getCaptureData());
        return "/modules/credit/person/person_credit_show";
    }

}
