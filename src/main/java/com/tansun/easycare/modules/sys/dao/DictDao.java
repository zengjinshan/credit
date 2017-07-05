package com.tansun.easycare.modules.sys.dao;

import java.util.List;

import com.tansun.easycare.core.persistence.CrudDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.sys.entity.Dict;

/**
 * 字典DAO接口
 * @author caojianfeng
 * @version 2014-05-16
 */
@MyBatisDao
public interface DictDao extends CrudDao<Dict> {

	public List<String> findTypeList(Dict dict);
	
}
