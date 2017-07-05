package com.tansun.easycare.modules.credit.web;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.web.BaseController;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.service.ICreditRhLogService;
import com.tansun.easycare.modules.sys.entity.Dict;
import com.tansun.easycare.modules.sys.utils.DictUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

/**
 * Author：jinshan
 * Date：2017/6/22
 * Time: 19:16
 */
@Controller
@RequestMapping("${adminPath}/rh/log")
public class CreditLogController extends BaseController {

    @Autowired
    private ICreditRhLogService creditRhLogService;

    @RequestMapping(value = "logList")
    public String logList(Model model, HttpServletRequest request, HttpServletResponse response,
                          RhSearchLog rhSearchLog){
        try{
            List<Dict> userTypes = DictUtils.getDictList("rh_user_type");//证件类型
            model.addAttribute("userTypes",userTypes);
            Page<RhSearchLog> page = creditRhLogService.findLog(rhSearchLog, new Page<RhSearchLog>(request, response));
            model.addAttribute("page",page);
        }catch (Exception e){
            e.printStackTrace();
        }

        return "/modules/credit/credit_log_list";
    }
}
