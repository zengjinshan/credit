package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_SummaryUnsettled02")
public class EcNrSummaryunsettled02 {
	
	@Id
    @Column(name = "SummaryUnsettled02_id",length = 40,nullable = false)
    private String summaryunsettled02Id;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Type",length = 200)
    private String type;
	@Column(name = "Normalsum_Number",length = 8)
    private String normalsumNumber;
	@Column(name = "Normalsum_Balance",length = 20)
    private String normalsumBalance;
	@Column(name = "Concernedsum_Number",length = 8)
    private String concernedsumNumber;
	@Column(name = "Concernedsum_Balance",length = 20)
    private String concernedsumBalance;
	@Column(name = "Badsum_Number",length = 8)
    private String badsumNumber;
	@Column(name = "Badsum_Balance",length = 20)
    private String badsumBalance;
	@Column(name = "Sumtotal_Number",length = 8)
    private String sumtotalNumber;
	@Column(name = "Sumtotal_Balance",length = 20)
    private String sumtotalBalance;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSummaryunsettled02Id() {
        return summaryunsettled02Id;
    }

    public void setSummaryunsettled02Id(String summaryunsettled02Id) {
        this.summaryunsettled02Id = summaryunsettled02Id == null ? null : summaryunsettled02Id.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getNormalsumNumber() {
        return normalsumNumber;
    }

    public void setNormalsumNumber(String normalsumNumber) {
        this.normalsumNumber = normalsumNumber == null ? null : normalsumNumber.trim();
    }

    public String getNormalsumBalance() {
        return normalsumBalance;
    }

    public void setNormalsumBalance(String normalsumBalance) {
        this.normalsumBalance = normalsumBalance == null ? null : normalsumBalance.trim();
    }

    public String getConcernedsumNumber() {
        return concernedsumNumber;
    }

    public void setConcernedsumNumber(String concernedsumNumber) {
        this.concernedsumNumber = concernedsumNumber == null ? null : concernedsumNumber.trim();
    }

    public String getConcernedsumBalance() {
        return concernedsumBalance;
    }

    public void setConcernedsumBalance(String concernedsumBalance) {
        this.concernedsumBalance = concernedsumBalance == null ? null : concernedsumBalance.trim();
    }

    public String getBadsumNumber() {
        return badsumNumber;
    }

    public void setBadsumNumber(String badsumNumber) {
        this.badsumNumber = badsumNumber == null ? null : badsumNumber.trim();
    }

    public String getBadsumBalance() {
        return badsumBalance;
    }

    public void setBadsumBalance(String badsumBalance) {
        this.badsumBalance = badsumBalance == null ? null : badsumBalance.trim();
    }

    public String getSumtotalNumber() {
        return sumtotalNumber;
    }

    public void setSumtotalNumber(String sumtotalNumber) {
        this.sumtotalNumber = sumtotalNumber == null ? null : sumtotalNumber.trim();
    }

    public String getSumtotalBalance() {
        return sumtotalBalance;
    }

    public void setSumtotalBalance(String sumtotalBalance) {
        this.sumtotalBalance = sumtotalBalance == null ? null : sumtotalBalance.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}