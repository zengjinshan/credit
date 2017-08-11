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
import com.tansun.easycare.modules.credit.service.ICreditRhEnterpriseService;
import com.tansun.easycare.modules.sys.entity.User;
import com.tansun.easycare.modules.sys.utils.UserUtils;
import org.apache.commons.lang3.StringUtils;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.*;

/**
 * Created by admin on 2017/6/29.
 */
public class RhRequestInterceptor implements HandlerInterceptor {

    private static Logger logger = Logger.getLogger(RhRequestInterceptor.class);

    @Autowired
    private BaseService baseService;

    @Autowired
    private ICreditRhEnterpriseService enterpriseService;

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object o) throws Exception {
        try {
            String url = request.getRequestURI();
            logger.info("拦截url:" + url);
            Map<String, String> map = new HashMap<String, String>();
            Map<String, String[]> parameterMap = request.getParameterMap();
            for (Object s : parameterMap.keySet()) {
                String[] s1 = parameterMap.get(s + "");
                logger.info("参数key:" + s.toString() + "===值：" + s1[0]);
                map.put(s.toString(), s1[0]);
            }
            User user = UserUtils.getUser();
            String code = user.getCompany().getCode();
            Map<String, Object> userMap = new HashMap<String, Object>();
            userMap.put("orgCode", code);
            userMap.put("type", Constant.CREDIT_ENTERPRISE);
            userMap.put("standInd", "1");
            String username = "";
            String password = "";
            String outCode = "";
            List<RhUser> rhUsers = baseService.queryForListBySql("creditRhUserMapper.selectRhUser", userMap);
            if (rhUsers != null && rhUsers.size() > 0) {
                username = rhUsers.get(0).getUserId();
                password = rhUsers.get(0).getPassword();
                outCode = rhUsers.get(0).getOutOrgCode();
            }
            EnterpriseCredit enterprise = new EnterpriseCredit();
            //登录
            enterprise.login(username, password, outCode);
            if (url.indexOf("reportInfoWindows") != -1) {//文件下载url
                logger.info("下载文件开始=============================");
                InputStream in = enterprise.enterpriseSearch3(map, url);
                OutputStream out=null;
                try {
                    response.setContentType("application/msexcel;charset=ISO-8859-1");
                    response.setHeader("content-disposition", "attachment;filename=data.xls");
                    out = response.getOutputStream();
                    byte[] buffer = new byte[1024];
                    int i = 0;
                    while ((i = in.read(buffer)) >0) {
                        out.write(buffer, 0, i);
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                }finally {
                    in.close();
                    out.flush();
                    out.close();
                }
            } else {
                //爬取页面
                String html = enterprise.enterpriseSearch2(map, url);//获取明细页面
                html=enterpriseService.enterpriseSearch(html,request);
                request.setAttribute("resultHtml", html);
                if (url.indexOf("professionAagainQuery") != -1) {
                    EnterpriseDataCapture dataCapture = new EnterpriseDataCapture();
                    dataCapture.setId(UUID.randomUUID().toString().replaceAll("-", ""));
                    dataCapture.setCreateUser(user.getId());
                    dataCapture.setSearcherLoginRhUserId(username);
                    dataCapture.setSearcherLoginRhPassword(password);
                    dataCapture.setCaptureData(html);
                    dataCapture.setCreateDate(new Date());
                    dataCapture.setLoanCardNo(map.get("code"));
                    dataCapture.setSearcherOrgCode(outCode);
                    dataCapture.setSearchType(map.get("type"));
                    dataCapture.setSearchReason("");
                    baseService.insertBySql("creditRhEnterpriseMapper.saveEnterprise", dataCapture);

                    RhSearchLog searchLog = new RhSearchLog();
                    searchLog.setId(UUID.randomUUID().toString().replaceAll("-", ""));
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
                request.getRequestDispatcher("/WEB-INF/views/modules/credit/enterprise/enterprise_credit_show.jsp").forward(request, response);
            }

        } catch (Exception e) {
            logger.info(e.getMessage());
        }

        return false;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object o, Exception e) throws Exception {

    }
}
