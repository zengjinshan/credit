package com.tansun.easycare.modules.sys.dao;

import com.tansun.easycare.core.persistence.TreeDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.sys.entity.Office;

/**
 * 机构DAO接口
 * @author caojianfeng
 * @version 2014-05-16
 */
@MyBatisDao
public interface OfficeDao extends TreeDao<Office> {
	
	public String findcode(String id);
	
}
