package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.EnterpriseDataCapture;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Author：jennie
 * Date：2017/6/26
 * Time: 15:37
 */
public interface ICreditRhEnterpriseService {

    public Page<EnterpriseDataCapture> list(Page<EnterpriseDataCapture> page, EnterpriseDataCapture
            enterpriseDataCapture) throws Exception;

    /**
     * 企业一般信用页面抓取，资源文件下载，替换
     * @param html
     * @return
     * @throws Exception
     */
    public String enterpriseSearch(String html, HttpServletRequest request)throws Exception;

}
