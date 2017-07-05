package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.PersonDataCapture;

/**
 * Created by admin on 2017/6/14.
 */
public interface ICreditRhPersonService {

    public Page<PersonDataCapture> findRhPersonSearchList(PersonDataCapture dataCapture, Page<PersonDataCapture> page) throws Exception;
}
