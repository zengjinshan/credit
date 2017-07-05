package com.tansun.easycare.modules.sys.service;

import java.util.List;

import com.tansun.easycare.core.service.CrudService;
import com.tansun.easycare.modules.sys.entity.Dict;

/**
 * 字典Service
 * @author caojianfeng
 * @version 2014-05-16
 */
public interface DictService extends CrudService<Dict> {
	/**
	 * 查询字段类型列表
	 * @return
	 */
	public List<String> findTypeList();

}
