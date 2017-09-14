package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_PB_LetterGuarantee")
public class EcNrPbLetterguarantee {
	
	@Id
    @Column(name = "PB_LetterGuarantee_id",length = 40,nullable = false)
    private String pbLetterguaranteeId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Lettersum",length = 20)
    private String lettersum;
	@Column(name = "Guaranteeletterkindcode",length = 200)
    private String guaranteeletterkindcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Startdate",length = 10)
    private String startdate;
	@Column(name = "Terminatedate",length = 10)
    private String terminatedate;
	@Column(name = "Settlementdate",length = 10)
    private String settlementdate;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "Paidbackflag",length = 200)
    private String paidbackflag;
	@Column(name = "declares",length = 600)
    private String declares;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPbLetterguaranteeId() {
        return pbLetterguaranteeId;
    }

    public void setPbLetterguaranteeId(String pbLetterguaranteeId) {
        this.pbLetterguaranteeId = pbLetterguaranteeId == null ? null : pbLetterguaranteeId.trim();
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

    public String getLettersum() {
        return lettersum;
    }

    public void setLettersum(String lettersum) {
        this.lettersum = lettersum == null ? null : lettersum.trim();
    }

    public String getGuaranteeletterkindcode() {
        return guaranteeletterkindcode;
    }

    public void setGuaranteeletterkindcode(String guaranteeletterkindcode) {
        this.guaranteeletterkindcode = guaranteeletterkindcode == null ? null : guaranteeletterkindcode.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getStartdate() {
        return startdate;
    }

    public void setStartdate(String startdate) {
        this.startdate = startdate == null ? null : startdate.trim();
    }

    public String getTerminatedate() {
        return terminatedate;
    }

    public void setTerminatedate(String terminatedate) {
        this.terminatedate = terminatedate == null ? null : terminatedate.trim();
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

    public String getPaidbackflag() {
        return paidbackflag;
    }

    public void setPaidbackflag(String paidbackflag) {
        this.paidbackflag = paidbackflag == null ? null : paidbackflag.trim();
    }

    public String getDeclares() {
        return declares;
    }

    public void setDeclares(String declares) {
        this.declares = declares == null ? null : declares.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}