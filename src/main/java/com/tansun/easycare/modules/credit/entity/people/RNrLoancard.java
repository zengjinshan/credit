package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_loancard")
public class RNrLoancard {
	
	@Id
	@Column(name="LOANCARD_ID",length=40,nullable=false)
    private String loancardId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="CUE",length=2000)
    private String cue;
	@Column(name="STATE",length=50)
    private String state;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getLoancardId() {
        return loancardId;
    }

    public void setLoancardId(String loancardId) {
        this.loancardId = loancardId == null ? null : loancardId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getCue() {
        return cue;
    }

    public void setCue(String cue) {
        this.cue = cue == null ? null : cue.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}