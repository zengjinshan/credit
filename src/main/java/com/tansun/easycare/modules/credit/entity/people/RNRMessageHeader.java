package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_messageheader")
public class RNRMessageHeader {
	
	@Id
	@Column(name="MESSAGEHEADER_ID",length=40,nullable=false)
    private String messageheaderId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="REPORTSN",length=24)
    private String reportsn;
	@Column(name="QUERYTIME",length=19)
    private String querytime;
	@Column(name="REPORTCREATETIME",length=19)
    private String reportcreatetime;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getMessageheaderId() {
        return messageheaderId;
    }

    public void setMessageheaderId(String messageheaderId) {
        this.messageheaderId = messageheaderId == null ? null : messageheaderId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getReportsn() {
        return reportsn;
    }

    public void setReportsn(String reportsn) {
        this.reportsn = reportsn == null ? null : reportsn.trim();
    }

    public String getQuerytime() {
        return querytime;
    }

    public void setQuerytime(String querytime) {
        this.querytime = querytime == null ? null : querytime.trim();
    }

    public String getReportcreatetime() {
        return reportcreatetime;
    }

    public void setReportcreatetime(String reportcreatetime) {
        this.reportcreatetime = reportcreatetime == null ? null : reportcreatetime.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}