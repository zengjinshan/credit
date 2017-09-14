package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

public class QuotaData {
    private String quaotaId;

    private String reportId;

    private String jsonValue;

    private Date timeStamp;

    public String getQuaotaId() {
        return quaotaId;
    }

    public void setQuaotaId(String quaotaId) {
        this.quaotaId = quaotaId == null ? null : quaotaId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getJsonValue() {
        return jsonValue;
    }

    public void setJsonValue(String jsonValue) {
        this.jsonValue = jsonValue == null ? null : jsonValue.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}