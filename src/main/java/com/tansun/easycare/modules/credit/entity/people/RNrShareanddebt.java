package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "r_nr_shareanddebt")	
public class RNrShareanddebt {
	@Id
	@Column(name="SHAREANDDEBT_ID",length=40,nullable=false)
    private String shareanddebtId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="FINANCECORPCOUNT",precision=10,scale=0)
    private Long financecorpcount;
	@Column(name="FINANCEORGCOUNT",precision=10,scale=0)
    private Long financeorgcount;
	@Column(name="ACCOUNTCOUNT",precision=10,scale=0)
    private Long accountcount;
    @Column(name="CREDITLIMIT",precision=20,scale=2)
    private BigDecimal creditlimit;
    @Column(name="MAXCREDITLIMITPERORG",precision=20,scale=2)
    private BigDecimal maxcreditlimitperorg;
    @Column(name="MINCREDITLIMITPERORG",precision=20,scale=2)
    private BigDecimal mincreditlimitperorg;
    @Column(name="BALANCE",precision=20,scale=2)
    private BigDecimal balance;
    @Column(name="USEDCREDITLIMIT",precision=20,scale=2)
    private BigDecimal usedcreditlimit;
    @Column(name="LATEST6MONTHUSEDAVGAMOUNT",precision=20,scale=2)
    private BigDecimal latest6monthusedavgamount;
    @Column(name="TYPE",length=4)
    private String type;
    @Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getShareanddebtId() {
        return shareanddebtId;
    }

    public void setShareanddebtId(String shareanddebtId) {
        this.shareanddebtId = shareanddebtId == null ? null : shareanddebtId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public Long getFinancecorpcount() {
        return financecorpcount;
    }

    public void setFinancecorpcount(Long financecorpcount) {
        this.financecorpcount = financecorpcount;
    }

    public Long getFinanceorgcount() {
        return financeorgcount;
    }

    public void setFinanceorgcount(Long financeorgcount) {
        this.financeorgcount = financeorgcount;
    }

    public Long getAccountcount() {
        return accountcount;
    }

    public void setAccountcount(Long accountcount) {
        this.accountcount = accountcount;
    }

    public BigDecimal getCreditlimit() {
        return creditlimit;
    }

    public void setCreditlimit(BigDecimal creditlimit) {
        this.creditlimit = creditlimit;
    }

    public BigDecimal getMaxcreditlimitperorg() {
        return maxcreditlimitperorg;
    }

    public void setMaxcreditlimitperorg(BigDecimal maxcreditlimitperorg) {
        this.maxcreditlimitperorg = maxcreditlimitperorg;
    }

    public BigDecimal getMincreditlimitperorg() {
        return mincreditlimitperorg;
    }

    public void setMincreditlimitperorg(BigDecimal mincreditlimitperorg) {
        this.mincreditlimitperorg = mincreditlimitperorg;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public BigDecimal getUsedcreditlimit() {
        return usedcreditlimit;
    }

    public void setUsedcreditlimit(BigDecimal usedcreditlimit) {
        this.usedcreditlimit = usedcreditlimit;
    }

    public BigDecimal getLatest6monthusedavgamount() {
        return latest6monthusedavgamount;
    }

    public void setLatest6monthusedavgamount(BigDecimal latest6monthusedavgamount) {
        this.latest6monthusedavgamount = latest6monthusedavgamount;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}