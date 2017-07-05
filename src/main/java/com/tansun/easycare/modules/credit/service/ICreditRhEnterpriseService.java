package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;

/**
 * Author：jennie
 * Date：2017/6/26
 * Time: 15:37
 */
public interface ICreditRhEnterpriseService {

    public Page<EnterpriseDataCapture> list(Page<EnterpriseDataCapture> page, EnterpriseDataCapture
            enterpriseDataCapture) throws Exception;

}
