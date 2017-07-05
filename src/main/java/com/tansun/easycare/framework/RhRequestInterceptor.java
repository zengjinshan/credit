package com.tansun.easycare.framework;

import com.tansun.easycare.common.Constant;
import com.tansun.easycare.framework.httpspider.EnterpriseCredit;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.framework.util.CreditPropertyUtil;
import com.tansun.easycare.framework.util.DownFile;
import com.tansun.easycare.framework.util.HtmlRegxUtil;
import com.tansun.easycare.framework.util.MsgIdUtil;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.domain.RhUser;
import com.tansun.easycare.modules.sys.entity.User;
import com.tansun.easycare.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.util.*;

/**
 * Created by admin on 2017/6/29.
 */
public class RhRequestInterceptor implements HandlerInterceptor {
    
    @Autowired
    private BaseService baseService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        String url = request.getRequestURI();
        Map<String,String> map=new HashMap<String,String>();
        Map<String,String[]> parameterMap = request.getParameterMap();
        for (Object s:parameterMap.keySet()){
            String[] s1 = parameterMap.get(s+"");
            map.put(s.toString(),s1[0]);
        }
        EnterpriseCredit enterprise=new EnterpriseCredit();
       String html = enterprise.enterpriseSearch2(map, url);//获取明细页面
        //替换css链接和js链接(加上项目工程地址)
        List<String> cssLinks = HtmlRegxUtil.match(html, "link", "href");
        List<String> scriptLinks=HtmlRegxUtil.match(html,"script","src");
        String proAddress = CreditPropertyUtil.instance.getPropertyValue("credit.person.search.page2");
        String basePath = request.getSession().getServletContext().getRealPath(File.separator);
        String cssPath=basePath+"static"+File.separator+"credit"+File.separator+"css"+File.separator;
        String jsPath=basePath+"static"+File.separator+"credit"+File.separator+"js"+File.separator;
        for (String css:cssLinks){
            byte[] cssBytes = DownFile.getFileFromNetByUrl(proAddress + css);
            String fileName=css.substring(css.lastIndexOf(File.separator)+1);
            DownFile.writeImageToDisk(cssBytes,cssPath,fileName);
            StringUtils.replace(html,css,cssPath+fileName);
        }
        for (String script:scriptLinks){
            byte[] jsBytes = DownFile.getFileFromNetByUrl(proAddress + script);
            String fileName=script.substring(script.lastIndexOf(File.separator)+1);
            DownFile.writeImageToDisk(jsBytes,jsPath,fileName);
            StringUtils.replace(html,script,jsPath+fileName);
        }
        request.setAttribute("resultHtml",html);
        if(url.indexOf("professionAagainQuery")!=-1){
            User user =UserUtils.getUser();
            String code = user.getCompany().getCode();
            Map<String,Object> m=new HashMap<String,Object>();
            map.put("orgCode",code);
            map.put("type", Constant.CREDIT_PERSON);
            map.put("standInd","1");
            String username="";
            String password="";
            String outCode="";
            try {
                List<RhUser> rhUsers = baseService.queryForListBySql("creditRhUserMapper.selectRhUser",map);
                if(rhUsers!=null&&rhUsers.size()>0){
                    username=rhUsers.get(0).getUserId();
                    password=rhUsers.get(0).getPassword();
                    outCode=rhUsers.get(0).getOutOrgCode();
                }
            } catch (Exception e) {
                e.printStackTrace();
            }
            EnterpriseDataCapture dataCapture=new EnterpriseDataCapture();
            dataCapture.setId(UUID.randomUUID().toString().replaceAll("-",""));
            dataCapture.setCreateUser(user.getId());
            dataCapture.setSearcherLoginRhUserId(username);
            dataCapture.setSearcherLoginRhPassword(password);
            dataCapture.setCaptureData(html);
            dataCapture.setCreateDate(new Date());
            dataCapture.setLoanCardNo(map.get("code"));
            dataCapture.setSearcherOrgCode(outCode);
            dataCapture.setSearchType(map.get("type"));
            dataCapture.setSearchReason("");
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
            searchLog.setSearcherNo(map.get("code"));
            searchLog.setSearcher("企业");
            searchLog.setSearchType("中征码");
            baseService.save(searchLog);

        }
        request.getRequestDispatcher("/WEB-INF/views/modules/credit/person/person_credit_show.jsp").forward(request,response);
        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
