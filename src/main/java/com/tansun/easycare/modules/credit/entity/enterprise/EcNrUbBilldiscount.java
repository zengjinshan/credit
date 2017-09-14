package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_UB_BillDiscount")
public class EcNrUbBilldiscount {
	@Id
    @Column(name = "UB_BillDiscount_id",length = 40,nullable = false)
    private String ubBilldiscountId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "ContractCode",length = 60)
    private String contractcode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Discountsum",length = 20)
    private String discountsum;
	@Column(name = "Discountdate",length = 10)
    private String discountdate;
	@Column(name = "Duebillterminatedate",length = 10)
    private String duebillterminatedate;
	@Column(name = "Fiveclasscode",length = 200)
    private String fiveclasscode;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUbBilldiscountId() {
        return ubBilldiscountId;
    }

    public void setUbBilldiscountId(String ubBilldiscountId) {
        this.ubBilldiscountId = ubBilldiscountId == null ? null : ubBilldiscountId.trim();
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

    public String getDiscountsum() {
        return discountsum;
    }

    public void setDiscountsum(String discountsum) {
        this.discountsum = discountsum == null ? null : discountsum.trim();
    }

    public String getDiscountdate() {
        return discountdate;
    }

    public void setDiscountdate(String discountdate) {
        this.discountdate = discountdate == null ? null : discountdate.trim();
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