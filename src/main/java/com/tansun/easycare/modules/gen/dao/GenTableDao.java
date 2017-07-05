package com.tansun.easycare.modules.gen.dao;

import com.tansun.easycare.core.persistence.CrudDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.gen.entity.GenTable;

/**
 * 业务表DAO接口
 * @author caojianfeng
 */
@MyBatisDao
public interface GenTableDao extends CrudDao<GenTable> {
	
}
