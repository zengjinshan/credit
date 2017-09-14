package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_awardcreditinfo")
public class RNrAwardcreditinfo {
	
	@Id
	@Column(name="AWARDCREDITINFO_ID",length=40,nullable=false)
    private String awardcreditinfoId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="SUPER_ID",length=40)
    private String superId;
	@Column(name="FINANCEORG",length=100)
    private String financeorg;
	@Column(name="FINANCETYPE",length=100)
    private String financetype;
	@Column(name="ACCOUNT",length=40)
    private String account;
	@Column(name="CURRENCY",length=50)
    private String currency;
	@Column(name="OPENDATE",length=20)
    private String opendate;
	@Column(name="CREDITLIMITAMOUNT",precision=20,scale=2)
    private BigDecimal creditlimitamount;
	@Column(name="GUARANTEETYPE",length=20)
    private String guaranteetype;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getAwardcreditinfoId() {
        return awardcreditinfoId;
    }

    public void setAwardcreditinfoId(String awardcreditinfoId) {
        this.awardcreditinfoId = awardcreditinfoId == null ? null : awardcreditinfoId.trim();
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

    public String getFinanceorg() {
        return financeorg;
    }

    public void setFinanceorg(String financeorg) {
        this.financeorg = financeorg == null ? null : financeorg.trim();
    }

    public String getFinancetype() {
        return financetype;
    }

    public void setFinancetype(String financetype) {
        this.financetype = financetype == null ? null : financetype.trim();
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account == null ? null : account.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getOpendate() {
        return opendate;
    }

    public void setOpendate(String opendate) {
        this.opendate = opendate == null ? null : opendate.trim();
    }

    public BigDecimal getCreditlimitamount() {
        return creditlimitamount;
    }

    public void setCreditlimitamount(BigDecimal creditlimitamount) {
        this.creditlimitamount = creditlimitamount;
    }

    public String getGuaranteetype() {
        return guaranteetype;
    }

    public void setGuaranteetype(String guaranteetype) {
        this.guaranteetype = guaranteetype == null ? null : guaranteetype.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}