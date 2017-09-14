package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_state")
public class RNrState {
	@Id
	@Column(name="STATE_ID",length=40,nullable=false)
    private String stateId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="SUPER_ID",length=40)
    private String superId;
	@Column(name="LATEST_ID",length=40)
    private String latestId;
	@Column(name="PAYMONTH",length=20)
    private String paymonth;
	@Column(name="PAYSTATE",length=30)
    private String paystate;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    private int stateIndex;

    public String getStateId() {
        return stateId;
    }

    public void setStateId(String stateId) {
        this.stateId = stateId == null ? null : stateId.trim();
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

    public String getLatestId() {
        return latestId;
    }

    public void setLatestId(String latestId) {
        this.latestId = latestId == null ? null : latestId.trim();
    }

    public String getPaymonth() {
        return paymonth;
    }

    public void setPaymonth(String paymonth) {
        this.paymonth = paymonth == null ? null : paymonth.trim();
    }

    public String getPaystate() {
        return paystate;
    }

    public void setPaystate(String paystate) {
        this.paystate = paystate == null ? null : paystate.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

	public int getStateIndex() {
		return stateIndex;
	}

	public void setStateIndex(int stateIndex) {
		this.stateIndex = stateIndex;
	}
    
    
}