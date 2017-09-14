package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_UB_TradeFinancing")
public class EcNrUbTradefinancing {
	@Id
    @Column(name = "TradeFinancing_id",length = 40,nullable = false)
    private String tradefinancingId;
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
	@Column(name = "Financingbalance",length = 20)
    private String financingbalance;
	@Column(name = "Duebilltakeoutdate",length = 10)
    private String duebilltakeoutdate;
	@Column(name = "Duebillterminatedate",length = 10)
    private String duebillterminatedate;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "Guarantee",length = 200)
    private String guarantee;
	@Column(name = "Extension",length = 200)
    private String extension;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getTradefinancingId() {
        return tradefinancingId;
    }

    public void setTradefinancingId(String tradefinancingId) {
        this.tradefinancingId = tradefinancingId == null ? null : tradefinancingId.trim();
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

    public String getFinancingbalance() {
        return financingbalance;
    }

    public void setFinancingbalance(String financingbalance) {
        this.financingbalance = financingbalance == null ? null : financingbalance.trim();
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

    public String getFiveclasscode() {
        return fiveclasscode;
    }

    public void setFiveclasscode(String fiveclasscode) {
        this.fiveclasscode = fiveclasscode == null ? null : fiveclasscode.trim();
    }

    public String getGuarantee() {
        return guarantee;
    }

    public void setGuarantee(String guarantee) {
        this.guarantee = guarantee == null ? null : guarantee.trim();
    }

    public String getExtension() {
        return extension;
    }

    public void setExtension(String extension) {
        this.extension = extension == null ? null : extension.trim();
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