package com.tansun.easycare.modules.sys.service.impl;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tansun.easycare.core.service.impl.TreeServiceImpl;
import com.tansun.easycare.modules.sys.dao.OfficeDao;
import com.tansun.easycare.modules.sys.entity.Office;
import com.tansun.easycare.modules.sys.service.OfficeService;
import com.tansun.easycare.modules.sys.utils.UserUtils;

/**
 * 机构Service
 * @author caojianfeng
 * @version 2014-05-16
 */
@Service("officeService")
@Transactional(readOnly = true)
public class OfficeServiceImpl extends TreeServiceImpl<OfficeDao, Office> implements OfficeService{

	@Autowired
	private OfficeDao officedao;
	public List<Office> findAll(){
		return UserUtils.getOfficeList();
	}

	public Office get(String id){
		return officedao.get(id);
	}
	
	public List<Office> findList(Boolean isAll){
		if (isAll != null && isAll){
			return UserUtils.getOfficeAllList();
		}else{
			return UserUtils.getOfficeList();
		}
	}
	
	@Transactional(readOnly = true)
	public List<Office> findList(Office office){
		if(office != null){
			office.setParentIds(office.getParentIds()+"%");
			return dao.findByParentIdsLike(office);
		}
		return  new ArrayList<Office>();
	}
	
	@Transactional(readOnly = false)
	public void save(Office office) {
		super.save(office);
		UserUtils.removeCache(UserUtils.CACHE_OFFICE_LIST);
		UserUtils.removeCache(UserUtils.CACHE_OFFICE_ALL_LIST);
	}
	
	@Transactional(readOnly = false)
	public void delete(Office office) {
		super.delete(office);
		UserUtils.removeCache(UserUtils.CACHE_OFFICE_LIST);
		UserUtils.removeCache(UserUtils.CACHE_OFFICE_ALL_LIST);
	}

	@Override
	public String findcode(String id) {
		// TODO Auto-generated method stub
		return officedao.findcode(id);
	}

}
