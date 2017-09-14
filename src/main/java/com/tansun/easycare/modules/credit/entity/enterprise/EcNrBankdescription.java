package com.tansun.easycare.modules.credit.entity.enterprise;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_BANKDESCRIPTION")
public class EcNrBankdescription {
	
	@Id
    @Column(name = "BANKDESCRIPTION_ID",length = 40,nullable = false)
    private String bankdescriptionId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "CONTENT",length = 500)
    private String content;
	@Column(name = "SUBMISSIONAGENCY",length = 200)
    private String submissionagency;
	@Column(name = "SUBMISSIONDATE",length = 10)
    private String submissiondate;

    public String getBankdescriptionId() {
        return bankdescriptionId;
    }

    public void setBankdescriptionId(String bankdescriptionId) {
        this.bankdescriptionId = bankdescriptionId == null ? null : bankdescriptionId.trim();
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

    public String getSubmissionagency() {
        return submissionagency;
    }

    public void setSubmissionagency(String submissionagency) {
        this.submissionagency = submissionagency == null ? null : submissionagency.trim();
    }

    public String getSubmissiondate() {
        return submissiondate;
    }

    public void setSubmissiondate(String submissiondate) {
        this.submissiondate = submissiondate == null ? null : submissiondate.trim();
    }
}