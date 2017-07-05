package com.tansun.easycare.modules.sys.service;

import java.util.List;

import com.tansun.easycare.core.service.TreeService;
import com.tansun.easycare.modules.sys.entity.Area;

public interface AreaService extends TreeService<Area>{

	public List<Area> findAll();
}
