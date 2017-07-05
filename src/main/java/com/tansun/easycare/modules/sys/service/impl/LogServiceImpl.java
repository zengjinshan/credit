package com.tansun.easycare.modules.sys.service.impl;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.service.impl.CrudServiceImpl;
import com.tansun.easycare.core.utils.DateUtils;
import com.tansun.easycare.modules.sys.dao.LogDao;
import com.tansun.easycare.modules.sys.entity.Log;
import com.tansun.easycare.modules.sys.service.LogService;

/**
 * 日志Service
 * @author caojianfeng
 * @version 2014-05-16
 */
@Service("logService")
@Transactional(readOnly = true)
public class LogServiceImpl extends CrudServiceImpl<LogDao, Log> implements LogService{

	public Page<Log> findPage(Page<Log> page, Log log) {
		
		// 设置默认时间范围，默认当前月
		if (log.getBeginDate() == null){
			log.setBeginDate(DateUtils.setDays(DateUtils.parseDate(DateUtils.getDate()), 1));
		}
		if (log.getEndDate() == null){
			log.setEndDate(DateUtils.addMonths(log.getBeginDate(), 1));
		}
		
		return super.findPage(page, log);
		
	}
	
}
