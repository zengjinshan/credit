package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_SYS_batch_request")
public class EcSysBatchRequest {
	@Id
    @Column(name = "BATCH_REQUEST_ID",length = 40,nullable = false)
    private String batchRequestId;
	@Column(name = "batch_id",length = 20)
    private String batchId;
	@Column(name = "enterprise",length = 16)
    private String enterprise;
	@Column(name = "reason",length = 20)
    private String reason;
	@Column(name = "TRANSACTION_ID",length = 20)
    private String transactionId;
	@Column(name = "QUERY_USER_CODE",length = 64)
    private String queryUserCode;
	@Column(name = "QUERY_ORG_CODE",length = 20)
    private String queryOrgCode;
	@Column(name = "REQ_DATE")
    private Date reqDate;
	@Column(name = "RESP_DATE")
    private Date respDate;
	@Column(name = "RH_STATUS",length = 10)
    private String rhStatus;
	@Column(name = "RETURN_CODE",length = 20)
    private String returnCode;

    public String getBatchRequestId() {
        return batchRequestId;
    }

    public void setBatchRequestId(String batchRequestId) {
        this.batchRequestId = batchRequestId == null ? null : batchRequestId.trim();
    }

    public String getBatchId() {
        return batchId;
    }

    public void setBatchId(String batchId) {
        this.batchId = batchId == null ? null : batchId.trim();
    }

    public String getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(String enterprise) {
        this.enterprise = enterprise == null ? null : enterprise.trim();
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getTransactionId() {
        return transactionId;
    }

    public void setTransactionId(String transactionId) {
        this.transactionId = transactionId == null ? null : transactionId.trim();
    }

    public String getQueryUserCode() {
        return queryUserCode;
    }

    public void setQueryUserCode(String queryUserCode) {
        this.queryUserCode = queryUserCode == null ? null : queryUserCode.trim();
    }

    public String getQueryOrgCode() {
        return queryOrgCode;
    }

    public void setQueryOrgCode(String queryOrgCode) {
        this.queryOrgCode = queryOrgCode == null ? null : queryOrgCode.trim();
    }

    public Date getReqDate() {
        return reqDate;
    }

    public void setReqDate(Date reqDate) {
        this.reqDate = reqDate;
    }

    public Date getRespDate() {
        return respDate;
    }

    public void setRespDate(Date respDate) {
        this.respDate = respDate;
    }

    public String getRhStatus() {
        return rhStatus;
    }

    public void setRhStatus(String rhStatus) {
        this.rhStatus = rhStatus == null ? null : rhStatus.trim();
    }

    public String getReturnCode() {
        return returnCode;
    }

    public void setReturnCode(String returnCode) {
        this.returnCode = returnCode == null ? null : returnCode.trim();
    }
}