package com.tansun.easycare.modules.gen.service;

import java.util.List;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.core.service.BaseService;
import com.tansun.easycare.modules.gen.entity.GenTable;

/**
 * 业务表Service
 * @author caojianfeng
 */
public interface GenTableService extends BaseService {

	public GenTable get(String id);
	
	public Page<GenTable> find(Page<GenTable> page, GenTable genTable);

	public List<GenTable> findAll();
	
	/**
	 * 获取物理数据表列表
	 * @param genTable
	 * @return
	 */
	public List<GenTable> findTableListFormDb(GenTable genTable);
	
	/**
	 * 验证表名是否可用，如果已存在，则返回false
	 * @param genTable
	 * @return
	 */
	public boolean checkTableName(String tableName);
	
	/**
	 * 获取物理数据表列表
	 * @param genTable
	 * @return
	 */
	public GenTable getTableFormDb(GenTable genTable);
	
	public void save(GenTable genTable);
	
	public void delete(GenTable genTable);
	
}
