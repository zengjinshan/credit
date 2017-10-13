package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.enterprise.EnterpriseDataCapture;
import com.tansun.easycare.modules.sys.entity.User;

import javax.servlet.http.HttpServletRequest;

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

	public void jsoupToObject(String rawText);

    /**
     * 个人征信记录保存及日志记录
     * @param dataCapture
     * @param username
     * @param pwd
     * @param user
     * @param resultHtml
     * @throws Exception
     */
    void saveDataCaptureAndLog(EnterpriseDataCapture dataCapture,
                               String username, String pwd, String outCode,
                               User user, String resultHtml) throws Exception;

}
