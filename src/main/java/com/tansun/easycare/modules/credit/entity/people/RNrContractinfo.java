package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_contractinfo")
public class RNrContractinfo {
	
	@Id
	@Column(name="CONTRACTINFO_ID",length=40,nullable=false)
    private String contractinfoId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="LOAN_ID",length=40)
    private String loanId;
	@Column(name="FINANCEORG",length=100)
    private String financeorg;
	@Column(name="FINANCETYPE",length=100)
    private String financetype;
	@Column(name="ACCOUNT",length=40)
    private String account;
	@Column(name="TYPE",length=50)
    private String type;
	@Column(name="CURRENCY",length=50)
    private String currency;
	@Column(name="OPENDATE",length=20)
    private String opendate;
	@Column(name="ENDDATE",length=20)
    private String enddate;
	@Column(name="CREDITLIMITAMOUNT",precision=20,scale=2)
    private BigDecimal creditlimitamount;
	@Column(name="GUARANTEETYPE",length=20)
    private String guaranteetype;
	@Column(name="PAYMENTRATING",length=20)
    private String paymentrating;
	@Column(name="PAYMENTCYC",length=20)
    private String paymentcyc;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getContractinfoId() {
        return contractinfoId;
    }

    public void setContractinfoId(String contractinfoId) {
        this.contractinfoId = contractinfoId == null ? null : contractinfoId.trim();
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
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

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
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

    public String getPaymentrating() {
        return paymentrating;
    }

    public void setPaymentrating(String paymentrating) {
        this.paymentrating = paymentrating == null ? null : paymentrating.trim();
    }

    public String getPaymentcyc() {
        return paymentcyc;
    }

    public void setPaymentcyc(String paymentcyc) {
        this.paymentcyc = paymentcyc == null ? null : paymentcyc.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}