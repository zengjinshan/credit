package com.tansun.easycare.modules.credit.service.impl;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.modules.credit.domain.PersonDataCapture;
import com.tansun.easycare.modules.credit.service.ICreditRhPersonService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Created by admin on 2017/6/14.
 */
@Service
@Transactional(readOnly = true)
public class CreditRhPersonServiceImpl implements ICreditRhPersonService {

    @Autowired
    private BaseService baseService;

    /**
     * 个人征信查询列表
     * @return
     */
    public Page<PersonDataCapture> findRhPersonSearchList(PersonDataCapture dataCapture, Page<PersonDataCapture> page) throws Exception {
        dataCapture.setPage(page);
        List<PersonDataCapture> list = baseService.queryForListBySql("creditRhPersonMapper.selectCreditPersonList", dataCapture);
        page.setList(list);
        return page;
    }
}
