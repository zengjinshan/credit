package com.tansun.easycare.modules.gen.dao;

import com.tansun.easycare.core.persistence.CrudDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.gen.entity.GenScheme;

/**
 * 生成方案DAO接口
 * @author caojianfeng
 */
@MyBatisDao
public interface GenSchemeDao extends CrudDao<GenScheme> {
	
}
