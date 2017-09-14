package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_PB_LoanInfo")
public class EcNrPbLoaninfo {
	
	@Id
    @Column(name = "PB_LoanInfo_id",length = 40,nullable = false)
    private String pbLoaninfoId;
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
	@Column(name = "Duebillsum",length = 20)
    private String duebillsum;
	@Column(name = "Duebilltakeoutdate",length = 10)
    private String duebilltakeoutdate;
	@Column(name = "Duebillterminatedate",length = 10)
    private String duebillterminatedate;
	@Column(name = "RepayType",length = 11)
    private String repaytype;
	@Column(name = "Fiveclasscode",length = 8)
    private String fiveclasscode;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;
    @Column(name = "Settlementdate",length = 10)
    private String settlementdate;

    public String getPbLoaninfoId() {
        return pbLoaninfoId;
    }

    public void setPbLoaninfoId(String pbLoaninfoId) {
        this.pbLoaninfoId = pbLoaninfoId == null ? null : pbLoaninfoId.trim();
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

    public String getDuebillsum() {
        return duebillsum;
    }

    public void setDuebillsum(String duebillsum) {
        this.duebillsum = duebillsum == null ? null : duebillsum.trim();
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

    public String getRepaytype() {
        return repaytype;
    }

    public void setRepaytype(String repaytype) {
        this.repaytype = repaytype == null ? null : repaytype.trim();
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

    public String getSettlementdate() {
        return settlementdate;
    }

    public void setSettlementdate(String settlementdate) {
        this.settlementdate = settlementdate == null ? null : settlementdate.trim();
    }
}