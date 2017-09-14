package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_curroverdue")
public class RNrCurroverdue {
	
	@Id
	@Column(name="CURROVERDUE_ID",length=40,nullable=false)
    private String curroverdueId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="SUPER_ID",length=40)
    private String superId;
	@Column(name="CURROVERDUECYC",precision=10,scale=0)
    private Long curroverduecyc;
	@Column(name="CURROVERDUEAMOUNT",precision=20,scale=2)
    private BigDecimal curroverdueamount;
	@Column(name="OVERDUE31TO60AMOUNT",precision=20,scale=2)
    private BigDecimal overdue31to60amount;
	@Column(name="OVERDUE61TO90AMOUNT",precision=20,scale=2)
    private BigDecimal overdue61to90amount;
	@Column(name="OVERDUE91TO180AMOUNT",precision=20,scale=2)
    private BigDecimal overdue91to180amount;
	@Column(name="OVERDUEOVER180AMOUNT",precision=20,scale=2)
    private BigDecimal overdueover180amount;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getCurroverdueId() {
        return curroverdueId;
    }

    public void setCurroverdueId(String curroverdueId) {
        this.curroverdueId = curroverdueId == null ? null : curroverdueId.trim();
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

    public Long getCurroverduecyc() {
        return curroverduecyc;
    }

    public void setCurroverduecyc(Long curroverduecyc) {
        this.curroverduecyc = curroverduecyc;
    }

    public BigDecimal getCurroverdueamount() {
        return curroverdueamount;
    }

    public void setCurroverdueamount(BigDecimal curroverdueamount) {
        this.curroverdueamount = curroverdueamount;
    }

    public BigDecimal getOverdue31to60amount() {
        return overdue31to60amount;
    }

    public void setOverdue31to60amount(BigDecimal overdue31to60amount) {
        this.overdue31to60amount = overdue31to60amount;
    }

    public BigDecimal getOverdue61to90amount() {
        return overdue61to90amount;
    }

    public void setOverdue61to90amount(BigDecimal overdue61to90amount) {
        this.overdue61to90amount = overdue61to90amount;
    }

    public BigDecimal getOverdue91to180amount() {
        return overdue91to180amount;
    }

    public void setOverdue91to180amount(BigDecimal overdue91to180amount) {
        this.overdue91to180amount = overdue91to180amount;
    }

    public BigDecimal getOverdueover180amount() {
        return overdueover180amount;
    }

    public void setOverdueover180amount(BigDecimal overdueover180amount) {
        this.overdueover180amount = overdueover180amount;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}