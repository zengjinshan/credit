package com.tansun.easycare.modules.sys.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tansun.easycare.core.service.impl.CrudServiceImpl;
import com.tansun.easycare.core.utils.CacheUtils;
import com.tansun.easycare.modules.sys.dao.DictDao;
import com.tansun.easycare.modules.sys.entity.Dict;
import com.tansun.easycare.modules.sys.service.DictService;
import com.tansun.easycare.modules.sys.utils.DictUtils;

/**
 * 字典Service
 * @author caojianfeng
 * @version 2014-05-16
 */
@Service("dictService")
@Transactional(readOnly = true)
public class DictServiceImpl extends CrudServiceImpl<DictDao, Dict> implements DictService{
	
	/**
	 * 查询字段类型列表
	 * @return
	 */
	public List<String> findTypeList(){
		return dao.findTypeList(new Dict());
	}

	@Transactional(readOnly = false)
	public void save(Dict dict) {
		super.save(dict);
		CacheUtils.remove(DictUtils.CACHE_DICT_MAP);
	}

	@Transactional(readOnly = false)
	public void delete(Dict dict) {
		super.delete(dict);
		CacheUtils.remove(DictUtils.CACHE_DICT_MAP);
	}

}
