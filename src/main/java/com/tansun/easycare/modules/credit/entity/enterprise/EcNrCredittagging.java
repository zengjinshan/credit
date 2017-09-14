package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_CREDITTAGGING")
public class EcNrCredittagging {
	@Id
    @Column(name = "CREDITTAGGING_ID",length = 40,nullable = false)
    private String credittaggingId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "CONTENT",length = 400)
    private String content;
	@Column(name = "MARKDATE",length = 10)
    private String markdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getCredittaggingId() {
        return credittaggingId;
    }

    public void setCredittaggingId(String credittaggingId) {
        this.credittaggingId = credittaggingId == null ? null : credittaggingId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getMarkdate() {
        return markdate;
    }

    public void setMarkdate(String markdate) {
        this.markdate = markdate == null ? null : markdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}