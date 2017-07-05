package com.tansun.easycare.modules.sys.dao;

import com.tansun.easycare.core.persistence.TreeDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.sys.entity.Area;

/**
 * 区域DAO接口
 * @author caojianfeng
 * @version 2014-05-16
 */
@MyBatisDao
public interface AreaDao extends TreeDao<Area> {
	
}
