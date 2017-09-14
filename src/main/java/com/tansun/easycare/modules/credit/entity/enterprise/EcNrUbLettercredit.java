package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_UB_LetterCredit")
public class EcNrUbLettercredit {
	
	@Id
    @Column(name = "UB_LetterCredit_id",length = 40,nullable = false)
    private String ubLettercreditId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Lettersum",length = 20)
    private String lettersum;
	@Column(name = "Letterdate",length = 10)
    private String letterdate;
	@Column(name = "Letterinvaliddate",length = 10)
    private String letterinvaliddate;
	@Column(name = "AvailableBalance",length = 20)
    private String availablebalance;
	@Column(name = "Bailscale",length = 6)
    private String bailscale;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "Guarantee",length = 200)
    private String guarantee;
	@Column(name = "Paidbackflag",length = 200)
    private String paidbackflag;
	@Column(name = "declares",length = 600)
    private String declares;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUbLettercreditId() {
        return ubLettercreditId;
    }

    public void setUbLettercreditId(String ubLettercreditId) {
        this.ubLettercreditId = ubLettercreditId == null ? null : ubLettercreditId.trim();
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

    public String getLettersum() {
        return lettersum;
    }

    public void setLettersum(String lettersum) {
        this.lettersum = lettersum == null ? null : lettersum.trim();
    }

    public String getLetterdate() {
        return letterdate;
    }

    public void setLetterdate(String letterdate) {
        this.letterdate = letterdate == null ? null : letterdate.trim();
    }

    public String getLetterinvaliddate() {
        return letterinvaliddate;
    }

    public void setLetterinvaliddate(String letterinvaliddate) {
        this.letterinvaliddate = letterinvaliddate == null ? null : letterinvaliddate.trim();
    }

    public String getAvailablebalance() {
        return availablebalance;
    }

    public void setAvailablebalance(String availablebalance) {
        this.availablebalance = availablebalance == null ? null : availablebalance.trim();
    }

    public String getBailscale() {
        return bailscale;
    }

    public void setBailscale(String bailscale) {
        this.bailscale = bailscale == null ? null : bailscale.trim();
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