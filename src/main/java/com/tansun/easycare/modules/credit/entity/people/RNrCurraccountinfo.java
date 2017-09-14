package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_curraccountinfo")
public class RNrCurraccountinfo {
	
	@Id
	@Column(name="CURRACCOUNTINFO_ID",length=40,nullable=false)
    private String curraccountinfoId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="LOAN_ID",length=40)
    private String loanId;
	@Column(name="STATEENDDATE",length=20)
    private String stateenddate;
	@Column(name="STATEENDMONTH",length=20)
    private String stateendmonth;
	@Column(name="CLASS5STATE",length=10)
    private String class5state;
	@Column(name="BALANCE",precision=20,scale=2)
    private BigDecimal balance;
	@Column(name="REMAINPAYMENTCYC",precision=10,scale=0)
    private Long remainpaymentcyc;
	@Column(name="SCHEDULEDPAYMENTAMOUNT",precision=20,scale=2)
    private BigDecimal scheduledpaymentamount;
	@Column(name="SCHEDULEDPAYMENTDATE",length=10)
    private String scheduledpaymentdate;
	@Column(name="ACTUALPAYMENTAMOUNT",precision=20,scale=2)
    private BigDecimal actualpaymentamount;
	@Column(name="RECENTPAYDATE",length=10)
    private String recentpaydate;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getCurraccountinfoId() {
        return curraccountinfoId;
    }

    public void setCurraccountinfoId(String curraccountinfoId) {
        this.curraccountinfoId = curraccountinfoId == null ? null : curraccountinfoId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getLoanId() {
        return loanId;
    }

    public void setLoanId(String loanId) {
        this.loanId = loanId == null ? null : loanId.trim();
    }

    public String getStateenddate() {
        return stateenddate;
    }

    public void setStateenddate(String stateenddate) {
        this.stateenddate = stateenddate == null ? null : stateenddate.trim();
    }

    public String getStateendmonth() {
        return stateendmonth;
    }

    public void setStateendmonth(String stateendmonth) {
        this.stateendmonth = stateendmonth == null ? null : stateendmonth.trim();
    }

    public String getClass5state() {
        return class5state;
    }

    public void setClass5state(String class5state) {
        this.class5state = class5state == null ? null : class5state.trim();
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public Long getRemainpaymentcyc() {
        return remainpaymentcyc;
    }

    public void setRemainpaymentcyc(Long remainpaymentcyc) {
        this.remainpaymentcyc = remainpaymentcyc;
    }

    public BigDecimal getScheduledpaymentamount() {
        return scheduledpaymentamount;
    }

    public void setScheduledpaymentamount(BigDecimal scheduledpaymentamount) {
        this.scheduledpaymentamount = scheduledpaymentamount;
    }

    public String getScheduledpaymentdate() {
        return scheduledpaymentdate;
    }

    public void setScheduledpaymentdate(String scheduledpaymentdate) {
        this.scheduledpaymentdate = scheduledpaymentdate == null ? null : scheduledpaymentdate.trim();
    }

    public BigDecimal getActualpaymentamount() {
        return actualpaymentamount;
    }

    public void setActualpaymentamount(BigDecimal actualpaymentamount) {
        this.actualpaymentamount = actualpaymentamount;
    }

    public String getRecentpaydate() {
        return recentpaydate;
    }

    public void setRecentpaydate(String recentpaydate) {
        this.recentpaydate = recentpaydate == null ? null : recentpaydate.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}