package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SummaryUnsettled01")
public class EcNrSummaryunsettled01 {
	
	@Id
    @Column(name = "SummaryUnsettled01_id",length = 40,nullable = false)
    private String summaryunsettled01Id;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Debtsdamf_Number",length = 8)
    private String debtsdamfNumber;
	@Column(name = "Debtsdamf_Balance",length = 20)
    private String debtsdamfBalance;
	@Column(name = "LastDisposaledDate",length = 10)
    private String lastdisposaleddate;
	@Column(name = "OweBalancesum_Number",length = 8)
    private String owebalancesumNumber;
	@Column(name = "OweBalancesum_Balance",length = 20)
    private String owebalancesumBalance;
	@Column(name = "PaidbackBalancesum_Number",length = 8)
    private String paidbackbalancesumNumber;
	@Column(name = "PaidbackBalancesum_Balance",length = 20)
    private String paidbackbalancesumBalance;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSummaryunsettled01Id() {
        return summaryunsettled01Id;
    }

    public void setSummaryunsettled01Id(String summaryunsettled01Id) {
        this.summaryunsettled01Id = summaryunsettled01Id == null ? null : summaryunsettled01Id.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getDebtsdamfNumber() {
        return debtsdamfNumber;
    }

    public void setDebtsdamfNumber(String debtsdamfNumber) {
        this.debtsdamfNumber = debtsdamfNumber == null ? null : debtsdamfNumber.trim();
    }

    public String getDebtsdamfBalance() {
        return debtsdamfBalance;
    }

    public void setDebtsdamfBalance(String debtsdamfBalance) {
        this.debtsdamfBalance = debtsdamfBalance == null ? null : debtsdamfBalance.trim();
    }

    public String getLastdisposaleddate() {
        return lastdisposaleddate;
    }

    public void setLastdisposaleddate(String lastdisposaleddate) {
        this.lastdisposaleddate = lastdisposaleddate == null ? null : lastdisposaleddate.trim();
    }

    public String getOwebalancesumNumber() {
        return owebalancesumNumber;
    }

    public void setOwebalancesumNumber(String owebalancesumNumber) {
        this.owebalancesumNumber = owebalancesumNumber == null ? null : owebalancesumNumber.trim();
    }

    public String getOwebalancesumBalance() {
        return owebalancesumBalance;
    }

    public void setOwebalancesumBalance(String owebalancesumBalance) {
        this.owebalancesumBalance = owebalancesumBalance == null ? null : owebalancesumBalance.trim();
    }

    public String getPaidbackbalancesumNumber() {
        return paidbackbalancesumNumber;
    }

    public void setPaidbackbalancesumNumber(String paidbackbalancesumNumber) {
        this.paidbackbalancesumNumber = paidbackbalancesumNumber == null ? null : paidbackbalancesumNumber.trim();
    }

    public String getPaidbackbalancesumBalance() {
        return paidbackbalancesumBalance;
    }

    public void setPaidbackbalancesumBalance(String paidbackbalancesumBalance) {
        this.paidbackbalancesumBalance = paidbackbalancesumBalance == null ? null : paidbackbalancesumBalance.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}