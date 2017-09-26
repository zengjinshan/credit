package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SummarySettled01")
public class EcNrSummarysettled01 {
	
	@Id
    @Column(name = "SummarySettled01_id",length = 40,nullable = false)
    private String summarysettled01Id;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Debtsdamf_Number",length = 8)
    private String debtsdamfNumber;
	@Column(name = "Debtsdamf_Balance",length = 20)
    private String debtsdamfBalance;
	@Column(name = "LastDisposaledDate",length = 10)
    private String lastdisposaleddate;
	@Column(name = "Liabilitie_Number",length = 8)
    private String liabilitieNumber;
	@Column(name = "Liabilitie_Balance",length = 20)
    private String liabilitieBalance;
	@Column(name = "Liabilitie_LastDate",length = 10)
    private String liabilitieLastdate;
	@Column(name = "PaidbackBalancesum_Number",length = 8)
    private String paidbackbalancesumNumber;
	@Column(name = "PaidbackBalancesum_Balance",length = 20)
    private String paidbackbalancesumBalance;
	@Column(name = "PaidbackBalancesum_Paiddate",length = 10)
    private String paidbackbalancesumPaiddate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;
    @Column(name = "Owe_Number",length = 20)
    private String oweNumber;
    @Column(name = "Owe_settle_lastdate",length = 20)
    private String oweSettleLastdate;
    
    //EcNrSummarysettled03
    @Column(name = "GuaranteeNum",length = 8)
    private String guaranteenum;
	@Column(name = "GuaranteeMoney",length = 20)
    private String guaranteemoney;
	@Column(name = "GuaranteeCompensationDate",length = 10)
    private String guaranteecompensationdate;
	@Column(name = "InsuranceNum",length = 8)
    private String insurancenum;
	@Column(name = "InsuranceMoney",length = 20)
    private String insurancemoney;
	@Column(name = "InsuranceCompensationDate",length = 10)
    private String insurancecompensationdate;

    public String getSummarysettled01Id() {
        return summarysettled01Id;
    }

    public void setSummarysettled01Id(String summarysettled01Id) {
        this.summarysettled01Id = summarysettled01Id == null ? null : summarysettled01Id.trim();
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

    public String getLiabilitieNumber() {
        return liabilitieNumber;
    }

    public void setLiabilitieNumber(String liabilitieNumber) {
        this.liabilitieNumber = liabilitieNumber == null ? null : liabilitieNumber.trim();
    }

    public String getLiabilitieBalance() {
        return liabilitieBalance;
    }

    public void setLiabilitieBalance(String liabilitieBalance) {
        this.liabilitieBalance = liabilitieBalance == null ? null : liabilitieBalance.trim();
    }

    public String getLiabilitieLastdate() {
        return liabilitieLastdate;
    }

    public void setLiabilitieLastdate(String liabilitieLastdate) {
        this.liabilitieLastdate = liabilitieLastdate == null ? null : liabilitieLastdate.trim();
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

    public String getPaidbackbalancesumPaiddate() {
        return paidbackbalancesumPaiddate;
    }

    public void setPaidbackbalancesumPaiddate(String paidbackbalancesumPaiddate) {
        this.paidbackbalancesumPaiddate = paidbackbalancesumPaiddate == null ? null : paidbackbalancesumPaiddate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getOweNumber() {
        return oweNumber;
    }

    public void setOweNumber(String oweNumber) {
        this.oweNumber = oweNumber == null ? null : oweNumber.trim();
    }

    public String getOweSettleLastdate() {
        return oweSettleLastdate;
    }

    public void setOweSettleLastdate(String oweSettleLastdate) {
        this.oweSettleLastdate = oweSettleLastdate == null ? null : oweSettleLastdate.trim();
    }
    
    public String getGuaranteenum() {
        return guaranteenum;
    }

    public void setGuaranteenum(String guaranteenum) {
        this.guaranteenum = guaranteenum == null ? null : guaranteenum.trim();
    }

    public String getGuaranteemoney() {
        return guaranteemoney;
    }

    public void setGuaranteemoney(String guaranteemoney) {
        this.guaranteemoney = guaranteemoney == null ? null : guaranteemoney.trim();
    }

    public String getGuaranteecompensationdate() {
        return guaranteecompensationdate;
    }

    public void setGuaranteecompensationdate(String guaranteecompensationdate) {
        this.guaranteecompensationdate = guaranteecompensationdate == null ? null : guaranteecompensationdate.trim();
    }

    public String getInsurancenum() {
        return insurancenum;
    }

    public void setInsurancenum(String insurancenum) {
        this.insurancenum = insurancenum == null ? null : insurancenum.trim();
    }

    public String getInsurancemoney() {
        return insurancemoney;
    }

    public void setInsurancemoney(String insurancemoney) {
        this.insurancemoney = insurancemoney == null ? null : insurancemoney.trim();
    }

    public String getInsurancecompensationdate() {
        return insurancecompensationdate;
    }

    public void setInsurancecompensationdate(String insurancecompensationdate) {
        this.insurancecompensationdate = insurancecompensationdate == null ? null : insurancecompensationdate.trim();
    }
}