package com.tansun.easycare.modules.sys.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tansun.easycare.core.service.TreeService;
import com.tansun.easycare.modules.sys.entity.Office;

/**
 * 机构Service
 * @author caojianfeng
 * @version 2014-05-16
 */
@Service
@Transactional(readOnly = true)
public interface OfficeService extends TreeService<Office> {

	public Office get(String id);
	
	public List<Office> findAll();
	
	public List<Office> findList(Boolean isAll);
	
	public String findcode(String id);
	
}
