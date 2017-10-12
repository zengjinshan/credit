package com.tansun.easycare.modules.credit.web;

import com.tansun.easycare.common.Constant;
import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.web.BaseController;
import com.tansun.easycare.framework.httpspider.PersonCredit;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.framework.util.MsgIdUtil;
import com.tansun.easycare.modules.credit.domain.PersonDataCapture;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.domain.RhUser;
import com.tansun.easycare.modules.credit.service.ICreditRhPersonService;
import com.tansun.easycare.modules.sys.entity.Dict;
import com.tansun.easycare.modules.sys.entity.User;
import com.tansun.easycare.modules.sys.utils.DictUtils;
import com.tansun.easycare.modules.sys.utils.UserUtils;
import org.apache.commons.collections.CollectionUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.*;

/**
 * Created by admin on 2017/6/14.
 */
@Controller
@RequestMapping("${adminPath}/rh/person")
public class CreditRhPersonController extends BaseController {

    @Autowired
    private ICreditRhPersonService creditRhPersonService;

    @Autowired
    private BaseService baseService;

    /**
     * @param model 个人征信查询列表
     * @param request
     * @param response
     * @param dataCapture
     * @return
     */
    @RequestMapping(value = "list")
    public String list(Model model, HttpServletRequest request, HttpServletResponse response, PersonDataCapture dataCapture) {
        try {
            String roleId = UserUtils.getUser().getRoleList().get(0).getId();
            if (StringUtils.isNotEmpty(roleId) && roleId.equals("1")) {
                //系统管理员
                Page<PersonDataCapture> page = creditRhPersonService.findRhPersonSearchList(dataCapture, new Page<PersonDataCapture>(request, response));
                model.addAttribute("page", page);
            } else {
                String enname = UserUtils.getUser().getRole().getEnname();
                if (StringUtils.isNotEmpty(enname) && enname.equals("person_search_role")) {
                    dataCapture.setCreateUser(UserUtils.getUser().getId());
                    Page<PersonDataCapture> page = creditRhPersonService.findRhPersonSearchList(dataCapture, new Page<PersonDataCapture>(request, response));
                    model.addAttribute("page", page);
                } else {
                    addMessage(model, "您没有权限查询");
                }
            }
            List<Dict> cerTypes = DictUtils.getDictList("cer_type");//证件类型
            List<Dict> personQueryReasons = DictUtils.getDictList("person_query_reason");//查询原因
            List<Dict> personQueryTypes = DictUtils.getDictList("person_query_type");//查询类型
            model.addAttribute("cerTypes", cerTypes);
            model.addAttribute("personQueryReasons", personQueryReasons);
            model.addAttribute("personQueryTypes", personQueryTypes);
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "/modules/credit/person/person_list";
    }

    /**
     *
     * @param model
     * @return
     */
    @RequestMapping(value = "form")
    public String form(Model model){
        PersonDataCapture dataCapture=new PersonDataCapture();
        model.addAttribute("dataCapture",dataCapture);
        return "/modules/credit/person/person_form";
    }

    /**
     *
     * @param dataCapture
     * @param model
     * @return
     */
    @RequestMapping(value = "searchCredit")
    public String searchCredit(PersonDataCapture dataCapture, Model model){
        User user = UserUtils.getUser();
        String code = user.getCompany().getCode();
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("orgCode",code);
        map.put("type",Constant.CREDIT_PERSON);
        map.put("standInd","1");
        String resultHtml="";
        String username="";
        String password="";
        try {

            List<RhUser> rhUsers = baseService.queryForListBySql("creditRhUserMapper.selectRhUser",map);
            if(rhUsers!=null&&rhUsers.size()>0){
                    username=rhUsers.get(0).getUserId();
                    password=rhUsers.get(0).getPassword();
            }
            List<PersonDataCapture> list = baseService.queryForListBySql("creditRhPersonMapper.selectCreditPersonList", dataCapture);
            if(CollectionUtils.isEmpty(list)){
                PersonCredit personCredit = new PersonCredit();
                personCredit.login(username,password);//人行登录
                //人行信用报告页面抓取
                resultHtml = personCredit.personSearch(dataCapture.getSearchedCerType(), dataCapture.getSearchedCerNo(), dataCapture.getSearchedUserName(),
                        dataCapture.getQueryReason(), "30", dataCapture.getQueryType());
                creditRhPersonService.jsoupToObject(resultHtml);
                int i = resultHtml.lastIndexOf("<tr>");
                int j = resultHtml.lastIndexOf("</tr>");
                resultHtml=resultHtml.replace(resultHtml.substring(i,j)," ");
                creditRhPersonService.saveDataCaptureAndLog(dataCapture,username,password,user,resultHtml);
            }else {
                PersonDataCapture p = (PersonDataCapture) baseService.find(PersonDataCapture.class, list.get(0).getId());
                resultHtml=p.getCaptureData();
                RhSearchLog searchLog=new RhSearchLog();
                searchLog.setId(UUID.randomUUID().toString().replaceAll("-",""));
                searchLog.setCreateDate(new Date());
                searchLog.setSearcherLoginIp(UserUtils.getUser().getLoginIp());
                searchLog.setSearcherLoginRhPassword(password);
                searchLog.setSearcherLoginRhUserId(username);
                searchLog.setQuerySeri(MsgIdUtil.randomForNum(7));
                searchLog.setCreateUser(user.getId());
                searchLog.setCreateUserName(user.getName());
                searchLog.setPeFlag(Constant.CREDIT_PERSON);
                searchLog.setSearcher(dataCapture.getSearchedUserName());
                searchLog.setSearcherNo(dataCapture.getSearchedCerNo());
                searchLog.setSearchType(DictUtils.getDictLabel(dataCapture.getSearchedCerType(),"cer_type",""));
                searchLog.setQuerySuccess("1");
                baseService.save(searchLog);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("resultHtml",resultHtml);

        return "/modules/credit/person/person_credit_show";
    }

    /**
     *
     * @param id
     * @param model
     * @return
     */
    @RequestMapping(value = "showCredit")
    public String showCredit(@RequestParam("id") String id,Model model){
        String resultHtml="";
        PersonDataCapture da=new PersonDataCapture();
        try {
            da= (PersonDataCapture) baseService.find(PersonDataCapture.class,id);
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("resultHtml",da.getCaptureData());
        return "/modules/credit/person/person_credit_show";
    }


}
