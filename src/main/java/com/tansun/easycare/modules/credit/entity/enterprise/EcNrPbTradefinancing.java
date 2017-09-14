package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_PB_TradeFinancing")
public class EcNrPbTradefinancing {
	@Id
    @Column(name = "PB_TradeFinancing_id",length = 40,nullable = false)
    private String pbTradefinancingId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Financekindcode",length = 200)
    private String financekindcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Financesum",length = 20)
    private String financesum;
	@Column(name = "Duebilltakeoutdate",length = 10)
    private String duebilltakeoutdate;
	@Column(name = "Duebillterminatedate",length = 10)
    private String duebillterminatedate;
	@Column(name = "Settlementdate",length = 10)
    private String settlementdate;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "Repaymentmethod",length = 200)
    private String repaymentmethod;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPbTradefinancingId() {
        return pbTradefinancingId;
    }

    public void setPbTradefinancingId(String pbTradefinancingId) {
        this.pbTradefinancingId = pbTradefinancingId == null ? null : pbTradefinancingId.trim();
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

    public String getFinancekindcode() {
        return financekindcode;
    }

    public void setFinancekindcode(String financekindcode) {
        this.financekindcode = financekindcode == null ? null : financekindcode.trim();
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

    public String getDuebilltakeoutdate() {
        return duebilltakeoutdate;
    }

    public void setDuebilltakeoutdate(String duebilltakeoutdate) {
        this.duebilltakeoutdate = duebilltakeoutdate == null ? null : duebilltakeoutdate.trim();
    }

    public String getDuebillterminatedate() {
        return duebillterminatedate;
    }

    public void setDuebillterminatedate(String duebillterminatedate) {
        this.duebillterminatedate = duebillterminatedate == null ? null : duebillterminatedate.trim();
    }

    public String getSettlementdate() {
        return settlementdate;
    }

    public void setSettlementdate(String settlementdate) {
        this.settlementdate = settlementdate == null ? null : settlementdate.trim();
    }

    public String getFiveclasscode() {
        return fiveclasscode;
    }

    public void setFiveclasscode(String fiveclasscode) {
        this.fiveclasscode = fiveclasscode == null ? null : fiveclasscode.trim();
    }

    public String getRepaymentmethod() {
        return repaymentmethod;
    }

    public void setRepaymentmethod(String repaymentmethod) {
        this.repaymentmethod = repaymentmethod == null ? null : repaymentmethod.trim();
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