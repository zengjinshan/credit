package com.tansun.easycare.modules.credit.service.impl;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.framework.service.BaseService;
import com.tansun.easycare.modules.credit.domain.RhUser;
import com.tansun.easycare.modules.credit.service.ICreditRhUserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by admin on 2017/6/12.
 */
@Service
@Transactional(readOnly = true)
public class CreditRhUserServiceImpl implements ICreditRhUserService {

    @Autowired
    private BaseService baseService;


    @Override
    public Page<RhUser> findRhUserList(String type, String code,Page<RhUser> page) throws Exception {
        Map<String,Object> map=new HashMap<String ,Object>();
        map.put("code",code);
        map.put("type",type);
        List<RhUser> list = baseService.queryForListBySql("creditRhUserMapper.selectRhUser", map);
        page.setList(list);
        return page;
    }

    @Override
    public void delete(String id) throws Exception {
        Map<String,Object> map=new HashMap<String,Object>();
        map.put("id",id);
        baseService.deleteBySql("creditRhUserMapper.deleteRhUser", map);
    }
}
