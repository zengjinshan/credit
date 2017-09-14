package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_Paid_Paidback")
public class EcNrPaidPaidback {
	@Id
    @Column(name = "Paid_Paidback_id",length = 40,nullable = false)
    private String paidPaidbackId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Paidbacksum",length = 20)
    private String paidbacksum;
	@Column(name = "Paidbackdate",length = 10)
    private String paidbackdate;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "Originaloperation",length = 200)
    private String originaloperation;
	@Column(name = "Settlementdate",length = 10)
    private String settlementdate;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPaidPaidbackId() {
        return paidPaidbackId;
    }

    public void setPaidPaidbackId(String paidPaidbackId) {
        this.paidPaidbackId = paidPaidbackId == null ? null : paidPaidbackId.trim();
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

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getPaidbacksum() {
        return paidbacksum;
    }

    public void setPaidbacksum(String paidbacksum) {
        this.paidbacksum = paidbacksum == null ? null : paidbacksum.trim();
    }

    public String getPaidbackdate() {
        return paidbackdate;
    }

    public void setPaidbackdate(String paidbackdate) {
        this.paidbackdate = paidbackdate == null ? null : paidbackdate.trim();
    }

    public String getFiveclasscode() {
        return fiveclasscode;
    }

    public void setFiveclasscode(String fiveclasscode) {
        this.fiveclasscode = fiveclasscode == null ? null : fiveclasscode.trim();
    }

    public String getOriginaloperation() {
        return originaloperation;
    }

    public void setOriginaloperation(String originaloperation) {
        this.originaloperation = originaloperation == null ? null : originaloperation.trim();
    }

    public String getSettlementdate() {
        return settlementdate;
    }

    public void setSettlementdate(String settlementdate) {
        this.settlementdate = settlementdate == null ? null : settlementdate.trim();
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