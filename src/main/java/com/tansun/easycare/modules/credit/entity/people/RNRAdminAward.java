package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "R_NR_ADMINAWARD")
public class RNRAdminAward {
	
	@Id
	@Column(name="ADMINAWARD_ID",length=40,nullable=false)
    private String adminawardId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="ORGANNAME",length=100)
    private String organname;
	@Column(name="CONTENT",length=100)
    private String content;
	@Column(name="BEGINDATE",length=10)
    private String begindate;
	@Column(name="ENDDATE",length=10)
    private String enddate;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getAdminawardId() {
        return adminawardId;
    }

    public void setAdminawardId(String adminawardId) {
        this.adminawardId = adminawardId == null ? null : adminawardId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate == null ? null : begindate.trim();
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}