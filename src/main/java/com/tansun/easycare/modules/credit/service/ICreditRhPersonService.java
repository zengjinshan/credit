package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.PersonDataCapture;
import com.tansun.easycare.modules.sys.entity.User;

/**
 * Created by admin on 2017/6/14.
 */
public interface ICreditRhPersonService {

    public Page<PersonDataCapture> findRhPersonSearchList(PersonDataCapture dataCapture, Page<PersonDataCapture> page) throws Exception;
    
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
    void saveDataCaptureAndLog(PersonDataCapture dataCapture,
                               String username, String pwd,
                               User user, String resultHtml) throws Exception;
}
