package com.tansun.easycare.modules.gen.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.service.BaseService;
import com.tansun.easycare.modules.gen.entity.GenScheme;

/**
 * 生成方案Service
 * @author caojianfeng
 */
public interface GenSchemeService extends BaseService {

	public GenScheme get(String id);
	
	public Page<GenScheme> find(Page<GenScheme> page, GenScheme genScheme);
	
	public String save(GenScheme genScheme);
	
	public void delete(GenScheme genScheme);
	
}
