package com.tansun.easycare.modules.credit.service.impl;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;
import com.tansun.easycare.modules.credit.service.ICreditRhEnterpriseService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Author：jennie
 * Date：2017/6/26
 * Time: 15:38
 */
@Service
@Transactional(readOnly = true)
public class CreditRhEnterpriseServiceImpl implements ICreditRhEnterpriseService {

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
}
