package com.tansun.easycare.modules.sys.service.impl;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.tansun.easycare.core.service.impl.TreeServiceImpl;
import com.tansun.easycare.modules.sys.dao.AreaDao;
import com.tansun.easycare.modules.sys.entity.Area;
import com.tansun.easycare.modules.sys.service.AreaService;
import com.tansun.easycare.modules.sys.utils.UserUtils;

/**
 * 区域Service
 * @author caojianfeng
 * @version 2014-05-16
 */
@Service("areaService")
@Transactional(readOnly = true)
public class AreaServiceImpl extends TreeServiceImpl<AreaDao, Area> implements AreaService {

	public List<Area> findAll(){
		return UserUtils.getAreaList();
	}

	@Transactional(readOnly = false)
	public void save(Area area) {
		super.save(area);
		UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
	}
	
	@Transactional(readOnly = false)
	public void delete(Area area) {
		super.delete(area);
		UserUtils.removeCache(UserUtils.CACHE_AREA_LIST);
	}
	
}
