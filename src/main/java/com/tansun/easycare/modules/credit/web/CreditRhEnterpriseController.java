package com.tansun.easycare.modules.credit.web;

import com.tansun.easycare.common.Constant;
import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.web.BaseController;
import com.tansun.easycare.framework.httpspider.EnterpriseCredit;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.framework.util.MsgIdUtil;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.domain.RhUser;
import com.tansun.easycare.modules.credit.service.ICreditRhEnterpriseService;
import com.tansun.easycare.modules.sys.entity.Dict;
import com.tansun.easycare.modules.sys.entity.User;
import com.tansun.easycare.modules.sys.utils.DictUtils;
import com.tansun.easycare.modules.sys.utils.UserUtils;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
        String username="";
        String password="";
        String outCode="";
        String html="";
        try{
            List<RhUser> rhUsers = baseService.queryForListBySql("creditRhUserMapper.selectRhUser",map);
            if(rhUsers!=null&&rhUsers.size()>0){
                    username=rhUsers.get(0).getUserId();
                    password=rhUsers.get(0).getPassword();
                    outCode=rhUsers.get(0).getOutOrgCode();
            }
            EnterpriseCredit enterprise=new EnterpriseCredit();
//            String login = enterprise.login(username, password, outCode);
            Map<String,Object> paramMap=new HashMap<String,Object>();
            paramMap.put("outCode",outCode);
            paramMap.put("loancardcode",dataCapture.getLoanCardNo());
            paramMap.put("searchReasonCode",dataCapture.getSearchReason());
            String html = enterprise.enterpriseSearch(paramMap);
            //结构化解析
            creditRhEnterpriseService.jsoupToObject(html);

            html= creditRhEnterpriseService.enterpriseSearch(html, request);
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
        return "/modules/credit/enterprise/enterprise_credit_show";
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
        return "/modules/credit/enterprise/enterprise_credit_show";
    }

}
