package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_paid_DebtInterest")
public class EcNrPaidDebtinterest {
	
	@Id
    @Column(name = "paid_DebtInterest_id",length = 40,nullable = false)
    private String paidDebtinterestId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Owebalancetormb",length = 20)
    private String owebalancetormb;
	@Column(name = "Firstdate",length = 10)
    private String firstdate;
	@Column(name = "LatestDate",length = 10)
    private String latestdate;
	@Column(name = "Owekindcode",length = 200)
    private String owekindcode;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPaidDebtinterestId() {
        return paidDebtinterestId;
    }

    public void setPaidDebtinterestId(String paidDebtinterestId) {
        this.paidDebtinterestId = paidDebtinterestId == null ? null : paidDebtinterestId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getFinancecode() {
        return financecode;
    }

    public void setFinancecode(String financecode) {
        this.financecode = financecode == null ? null : financecode.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getOwebalancetormb() {
        return owebalancetormb;
    }

    public void setOwebalancetormb(String owebalancetormb) {
        this.owebalancetormb = owebalancetormb == null ? null : owebalancetormb.trim();
    }

    public String getFirstdate() {
        return firstdate;
    }

    public void setFirstdate(String firstdate) {
        this.firstdate = firstdate == null ? null : firstdate.trim();
    }

    public String getLatestdate() {
        return latestdate;
    }

    public void setLatestdate(String latestdate) {
        this.latestdate = latestdate == null ? null : latestdate.trim();
    }

    public String getOwekindcode() {
        return owekindcode;
    }

    public void setOwekindcode(String owekindcode) {
        this.owekindcode = owekindcode == null ? null : owekindcode.trim();
    }

    public String getDeclare() {
        return declare;
    }

    public void setDeclare(String declare) {
        this.declare = declare == null ? null : declare.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}