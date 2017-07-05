package com.tansun.easycare.modules.gen.service.impl;

import org.apache.commons.lang3.StringEscapeUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.service.impl.BaseServiceImpl;
import com.tansun.easycare.core.utils.StringUtils;
import com.tansun.easycare.modules.gen.dao.GenTemplateDao;
import com.tansun.easycare.modules.gen.entity.GenTemplate;
import com.tansun.easycare.modules.gen.service.GenTemplateService;

/**
 * 代码模板Service
 * @author caojianfeng
 */
@Service("genTemplateService")
@Transactional(readOnly = true)
public class GenTemplateServiceImpl extends BaseServiceImpl implements GenTemplateService{

	@Autowired
	private GenTemplateDao genTemplateDao;
	
	public GenTemplate get(String id) {
		return genTemplateDao.get(id);
	}
	
	public Page<GenTemplate> find(Page<GenTemplate> page, GenTemplate genTemplate) {
		genTemplate.setPage(page);
		page.setList(genTemplateDao.findList(genTemplate));
		return page;
	}
	
	@Transactional(readOnly = false)
	public void save(GenTemplate genTemplate) {
		if (genTemplate.getContent()!=null){
			genTemplate.setContent(StringEscapeUtils.unescapeHtml4(genTemplate.getContent()));
		}
		if (StringUtils.isBlank(genTemplate.getId())){
			genTemplate.preInsert();
			genTemplateDao.insert(genTemplate);
		}else{
			genTemplate.preUpdate();
			genTemplateDao.update(genTemplate);
		}
	}
	
	@Transactional(readOnly = false)
	public void delete(GenTemplate genTemplate) {
		genTemplateDao.delete(genTemplate);
	}
	
}
