package com.tansun.easycare.modules.gen.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.service.BaseService;
import com.tansun.easycare.modules.gen.entity.GenTemplate;

/**
 * 代码模板Service
 * @author caojianfeng
 */
public interface GenTemplateService extends BaseService {

	public GenTemplate get(String id);
	
	public Page<GenTemplate> find(Page<GenTemplate> page, GenTemplate genTemplate);
	
	public void save(GenTemplate genTemplate);
	
	public void delete(GenTemplate genTemplate);
	
}
