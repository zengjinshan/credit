package com.tansun.easycare.modules.credit.service.impl;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;
import com.tansun.easycare.modules.credit.service.ICreditRhLogService;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

/**
 * Author：jennie
 * Date：2017/6/22
 * Time: 19:17
 */
@Service
@Transactional(readOnly = true)
public class CreditRhLogServiceImpl implements ICreditRhLogService {

    @Autowired
    private BaseService baseService;

    @Override
    public Page<RhSearchLog> findLog(RhSearchLog rhSearchLog, Page<RhSearchLog> page) throws Exception {
        rhSearchLog.setPage(page);
        if(StringUtils.isNotEmpty(rhSearchLog.getBeginDate())){
            rhSearchLog.setBeginDate(rhSearchLog.getBeginDate()+" 00:00:00.1");
        }
        if(StringUtils.isNotEmpty(rhSearchLog.getEndDate())){
            rhSearchLog.setEndDate(rhSearchLog.getEndDate()+" 23:59:59.1");
        }

        List list = baseService.queryForListBySql("creditLogMapper.findSearchLog", rhSearchLog);
        page.setList(list);
        return page;
    }
}
