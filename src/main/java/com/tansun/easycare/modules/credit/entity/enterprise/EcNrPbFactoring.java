package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_PB_Factoring")
public class EcNrPbFactoring {
	
	@Id
    @Column(name = "PB_Factoring_id",length = 40,nullable = false)
    private String pbFactoringId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 40)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Assureproductcode",length =200)
    private String assureproductcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Extendsum",length = 20)
    private String extendsum;
	@Column(name = "Extenddate",length = 10)
    private String extenddate;
	@Column(name = "Settlementdate",length = 10)
    private String settlementdate;
	@Column(name = "Paidbackflag",length = 200)
    private String paidbackflag;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPbFactoringId() {
        return pbFactoringId;
    }

    public void setPbFactoringId(String pbFactoringId) {
        this.pbFactoringId = pbFactoringId == null ? null : pbFactoringId.trim();
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

    public String getAssureproductcode() {
        return assureproductcode;
    }

    public void setAssureproductcode(String assureproductcode) {
        this.assureproductcode = assureproductcode == null ? null : assureproductcode.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getExtendsum() {
        return extendsum;
    }

    public void setExtendsum(String extendsum) {
        this.extendsum = extendsum == null ? null : extendsum.trim();
    }

    public String getExtenddate() {
        return extenddate;
    }

    public void setExtenddate(String extenddate) {
        this.extenddate = extenddate == null ? null : extenddate.trim();
    }

    public String getSettlementdate() {
        return settlementdate;
    }

    public void setSettlementdate(String settlementdate) {
        this.settlementdate = settlementdate == null ? null : settlementdate.trim();
    }

    public String getPaidbackflag() {
        return paidbackflag;
    }

    public void setPaidbackflag(String paidbackflag) {
        this.paidbackflag = paidbackflag == null ? null : paidbackflag.trim();
    }

    public String getFiveclasscode() {
        return fiveclasscode;
    }

    public void setFiveclasscode(String fiveclasscode) {
        this.fiveclasscode = fiveclasscode == null ? null : fiveclasscode.trim();
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