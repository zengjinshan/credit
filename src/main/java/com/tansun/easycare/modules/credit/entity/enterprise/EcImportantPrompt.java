package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

public class EcImportantPrompt {
    private String importantPromptId;

    private String orgBizCode;

    private String enterprise;

    private String orgnCode;

    private String infoCode;

    private String bizDate;

    private Date updateDate;

    public String getImportantPromptId() {
        return importantPromptId;
    }

    public void setImportantPromptId(String importantPromptId) {
        this.importantPromptId = importantPromptId == null ? null : importantPromptId.trim();
    }

    public String getOrgBizCode() {
        return orgBizCode;
    }

    public void setOrgBizCode(String orgBizCode) {
        this.orgBizCode = orgBizCode == null ? null : orgBizCode.trim();
    }

    public String getEnterprise() {
        return enterprise;
    }

    public void setEnterprise(String enterprise) {
        this.enterprise = enterprise == null ? null : enterprise.trim();
    }

    public String getOrgnCode() {
        return orgnCode;
    }

    public void setOrgnCode(String orgnCode) {
        this.orgnCode = orgnCode == null ? null : orgnCode.trim();
    }

    public String getInfoCode() {
        return infoCode;
    }

    public void setInfoCode(String infoCode) {
        this.infoCode = infoCode == null ? null : infoCode.trim();
    }

    public String getBizDate() {
        return bizDate;
    }

    public void setBizDate(String bizDate) {
        this.bizDate = bizDate == null ? null : bizDate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}