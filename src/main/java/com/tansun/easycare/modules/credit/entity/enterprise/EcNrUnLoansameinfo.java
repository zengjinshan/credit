package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_UN_LoanSameInfo")
public class EcNrUnLoansameinfo {
	@Id
    @Column(name = "UN_LoanSameInfo_id",length = 40,nullable = false)
    private String unLoansameinfoId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Loankindcode",length = 200)
    private String loankindcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Financesum",length = 20)
    private String financesum;
	@Column(name = "balance",length = 20)
    private String balance;
	@Column(name = "Financedate",length = 10)
    private String financedate;
	@Column(name = "terminatedate",length = 10)
    private String terminatedate;
	@Column(name = "Loanformcode",length = 200)
    private String loanformcode;
	@Column(name = "Guarantee",length = 200)
    private String guarantee;
	@Column(name = "delay",length = 200)
    private String delay;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUnLoansameinfoId() {
        return unLoansameinfoId;
    }

    public void setUnLoansameinfoId(String unLoansameinfoId) {
        this.unLoansameinfoId = unLoansameinfoId == null ? null : unLoansameinfoId.trim();
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

    public String getContractcode() {
        return contractcode;
    }

    public void setContractcode(String contractcode) {
        this.contractcode = contractcode == null ? null : contractcode.trim();
    }

    public String getLoankindcode() {
        return loankindcode;
    }

    public void setLoankindcode(String loankindcode) {
        this.loankindcode = loankindcode == null ? null : loankindcode.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getFinancesum() {
        return financesum;
    }

    public void setFinancesum(String financesum) {
        this.financesum = financesum == null ? null : financesum.trim();
    }

    public String getBalance() {
        return balance;
    }

    public void setBalance(String balance) {
        this.balance = balance == null ? null : balance.trim();
    }

    public String getFinancedate() {
        return financedate;
    }

    public void setFinancedate(String financedate) {
        this.financedate = financedate == null ? null : financedate.trim();
    }

    public String getTerminatedate() {
        return terminatedate;
    }

    public void setTerminatedate(String terminatedate) {
        this.terminatedate = terminatedate == null ? null : terminatedate.trim();
    }

    public String getLoanformcode() {
        return loanformcode;
    }

    public void setLoanformcode(String loanformcode) {
        this.loanformcode = loanformcode == null ? null : loanformcode.trim();
    }

    public String getGuarantee() {
        return guarantee;
    }

    public void setGuarantee(String guarantee) {
        this.guarantee = guarantee == null ? null : guarantee.trim();
    }

    public String getDelay() {
        return delay;
    }

    public void setDelay(String delay) {
        this.delay = delay == null ? null : delay.trim();
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