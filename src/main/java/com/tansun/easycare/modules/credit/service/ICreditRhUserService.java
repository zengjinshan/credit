package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.RhUser;

/**
 * Created by admin on 2017/6/12.
 */
public interface ICreditRhUserService {

    public Page<RhUser> findRhUserList(String type, String code, Page<RhUser> page) throws Exception;

    public void delete(String id) throws Exception;
}
