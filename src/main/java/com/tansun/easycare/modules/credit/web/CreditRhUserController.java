package com.tansun.easycare.modules.credit.web;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.web.BaseController;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.modules.credit.domain.RhUser;
import com.tansun.easycare.modules.credit.service.ICreditRhUserService;
import com.tansun.easycare.modules.sys.entity.Dict;
import com.tansun.easycare.modules.sys.utils.DictUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Date;
import java.util.List;
import java.util.UUID;

/**
 * Created by admin on 2017/6/12.
 */
@Controller
@RequestMapping("${adminPath}/rh/user")
public class CreditRhUserController extends BaseController {

    @Autowired
    private ICreditRhUserService creditRhUserService;

    @Autowired
    private BaseService baseService;

    /**人行用户列表
     * @param type
     * @param code
     * @param request
     * @param response
     * @param model
     * @return
     */
    @RequestMapping(value = "userList")
    public String userList(@RequestParam(required = false, value = "type") String type,
                           @RequestParam(required = false, value = "orgCode") String code,
                           HttpServletRequest request, HttpServletResponse response, Model model) {

        try {
            Page<RhUser> rhUserList = creditRhUserService.findRhUserList(type, code, new Page<RhUser>(request, response));
            model.addAttribute("page", rhUserList);
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
        }
        List<Dict> rh_user_type = DictUtils.getDictList("rh_user_type");
        model.addAttribute("dicts",rh_user_type);
        return "modules/credit/user_list";
    }

    /**新增修改人行用户
     * @param request
     * @param model
     * @param redirectAttributes
     * @param user
     * @return
     */
    @RequestMapping(value = "save")
    public String save(HttpServletRequest request, Model model, RedirectAttributes redirectAttributes, RhUser user) {
        try {
            if (StringUtils.isNotEmpty(user.getId())) {
                RhUser rhUser = (RhUser) baseService.find(RhUser.class, user.getId());
                if (rhUser.getUserId().equals(user.getUserId())) {
                    user.setUpdateDate(new Date());
                    baseService.update(user);
                    addMessage(redirectAttributes, "修改成功！");
                } else {
                    int i = baseService.queryForIntBySql("creditRhUserMapper.selectUserCountByUserId", user);
                    if (i > 0) {
                        addMessage(model, "用户名已存在！");
                    } else {
                        user.setUpdateDate(new Date());
                        baseService.update(user);
                        addMessage(redirectAttributes, "修改成功！");
                    }
                }
            } else {
                user.setId(UUID.randomUUID().toString().replaceAll("-", ""));
                user.setUpdateDate(new Date());
                baseService.save(user);
                addMessage(redirectAttributes, "新增成功！");
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:"+adminPath+"/rh/user/userList?repage";
    }

    /**跳转新增修改页面
     * @param id
     * @return
     */
    @RequestMapping(value = "form")
    public String form(@RequestParam(required = false, value = "id") String id, Model model) {
        RhUser user=new RhUser();
        try {
            if (StringUtils.isNotEmpty(id)) {
                user = (RhUser) baseService.find(RhUser.class, id);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        model.addAttribute("user",user);
        return "modules/credit/user_form";
    }

    /**
     * 删除人行用户
     * @param id
     * @return
     */
    @RequestMapping(value = "delete")
    public String delete(@RequestParam("id") String id,Model model, RedirectAttributes redirectAttributes){
        try {
            creditRhUserService.delete(id);
            addMessage(redirectAttributes,"删除成功！");
        } catch (Exception e) {
            e.printStackTrace();
        }
        return "redirect:"+adminPath+"/rh/user/userList?repage";
    }



}
