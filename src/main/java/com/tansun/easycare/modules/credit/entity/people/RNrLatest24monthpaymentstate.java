package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "r_nr_latest24monthpaymentstate")
public class RNrLatest24monthpaymentstate {
	
	@Id
	@Column(name="LATEST_ID",length=40,nullable=false)
    private String latestId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="SUPER_ID",length=40)
    private String superId;
	@Column(name="BEGINMONTH",length=20)
    private String beginmonth;
	@Column(name="ENDMONTH",length=20)
    private String endmonth;
	@Column(name="LATEST24STATE",length=200)
    private String latest24state;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getLatestId() {
        return latestId;
    }

    public void setLatestId(String latestId) {
        this.latestId = latestId == null ? null : latestId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getSuperId() {
        return superId;
    }

    public void setSuperId(String superId) {
        this.superId = superId == null ? null : superId.trim();
    }

    public String getBeginmonth() {
        return beginmonth;
    }

    public void setBeginmonth(String beginmonth) {
        this.beginmonth = beginmonth == null ? null : beginmonth.trim();
    }

    public String getEndmonth() {
        return endmonth;
    }

    public void setEndmonth(String endmonth) {
        this.endmonth = endmonth == null ? null : endmonth.trim();
    }

    public String getLatest24state() {
        return latest24state;
    }

    public void setLatest24state(String latest24state) {
        this.latest24state = latest24state == null ? null : latest24state.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}