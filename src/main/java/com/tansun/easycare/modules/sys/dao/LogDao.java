package com.tansun.easycare.modules.sys.dao;

import com.tansun.easycare.core.persistence.CrudDao;
import com.tansun.easycare.core.persistence.annotation.MyBatisDao;
import com.tansun.easycare.modules.sys.entity.Log;

/**
 * 日志DAO接口
 * @author caojianfeng
 * @version 2014-05-16
 */
@MyBatisDao
public interface LogDao extends CrudDao<Log> {

}
