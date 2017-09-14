package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_REPORT")
public class EcNrReport {
	@Id
    @Column(name = "report_id",length = 40,nullable = false)
    private String reportId;
	@Column(name = "ReportType",length = 200)
    private String reporttype;
	@Column(name = "ReportDate",length = 10)
    private String reportdate;
	@Column(name = "ReportNo",length = 22)
    private String reportno;
	@Column(name = "CreditCode",length = 18)
    private String creditcode;
	@Column(name = "CompanyProperty",length = 200)
    private String companyproperty;
	@Column(name = "QuerOrgcode",length = 14)
    private String querorgcode;
	@Column(name = "UserCode",length = 64)
    private String usercode;
	@Column(name = "LoanCardCode",length = 16)
    private String loancardcode;
	@Column(name = "QueryReason",length = 200)
    private String queryreason;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getReporttype() {
        return reporttype;
    }

    public void setReporttype(String reporttype) {
        this.reporttype = reporttype == null ? null : reporttype.trim();
    }

    public String getReportdate() {
        return reportdate;
    }

    public void setReportdate(String reportdate) {
        this.reportdate = reportdate == null ? null : reportdate.trim();
    }

    public String getReportno() {
        return reportno;
    }

    public void setReportno(String reportno) {
        this.reportno = reportno == null ? null : reportno.trim();
    }

    public String getCreditcode() {
        return creditcode;
    }

    public void setCreditcode(String creditcode) {
        this.creditcode = creditcode == null ? null : creditcode.trim();
    }

    public String getCompanyproperty() {
        return companyproperty;
    }

    public void setCompanyproperty(String companyproperty) {
        this.companyproperty = companyproperty == null ? null : companyproperty.trim();
    }

    public String getQuerorgcode() {
        return querorgcode;
    }

    public void setQuerorgcode(String querorgcode) {
        this.querorgcode = querorgcode == null ? null : querorgcode.trim();
    }

    public String getUsercode() {
        return usercode;
    }

    public void setUsercode(String usercode) {
        this.usercode = usercode == null ? null : usercode.trim();
    }

    public String getLoancardcode() {
        return loancardcode;
    }

    public void setLoancardcode(String loancardcode) {
        this.loancardcode = loancardcode == null ? null : loancardcode.trim();
    }

    public String getQueryreason() {
        return queryreason;
    }

    public void setQueryreason(String queryreason) {
        this.queryreason = queryreason == null ? null : queryreason.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}