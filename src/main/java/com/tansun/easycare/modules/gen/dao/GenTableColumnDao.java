package com.tansun.easycare.modules.gen.dao;

import com.tansun.easycare.core.persistence.CrudDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.gen.entity.GenTableColumn;

/**
 * 业务表字段DAO接口
 * @author caojianfeng
 */
@MyBatisDao
public interface GenTableColumnDao extends CrudDao<GenTableColumn> {
	
	public void deleteByGenTableId(String genTableId);
}
