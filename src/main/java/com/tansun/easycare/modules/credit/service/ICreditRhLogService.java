package com.tansun.easycare.modules.credit.service;

import com.tansun.easycare.core.persistence.Page;
import com.tansun.easycare.modules.credit.domain.RhSearchLog;

/**
 * Author：jennie
 * Date：2017/6/22
 * Time: 19:17
 */
public interface ICreditRhLogService {

    public Page<RhSearchLog> findLog(RhSearchLog rhSearchLog, Page<RhSearchLog> page) throws Exception;
}
