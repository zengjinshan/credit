package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SummaryUnsettled03")
public class EcNrSummaryunsettled03 {
	
	@Id
    @Column(name = "SummaryUnsettled03_id",length = 40,nullable = false)
    private String summaryunsettled03Id;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "GuaranteeNum",length = 8)
    private String guaranteenum;
	@Column(name = "GuaranteeBalance",length = 20)
    private String guaranteebalance;
	@Column(name = "GuaranteePayOffDate",length = 10)
    private String guaranteepayoffdate;
	@Column(name = "InsuranceNum",length = 8)
    private String insurancenum;
	@Column(name = "InsuranceBalance",length = 20)
    private String insurancebalance;
	@Column(name = "InsurancePayOffDate",length = 10)
    private String insurancepayoffdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSummaryunsettled03Id() {
        return summaryunsettled03Id;
    }

    public void setSummaryunsettled03Id(String summaryunsettled03Id) {
        this.summaryunsettled03Id = summaryunsettled03Id == null ? null : summaryunsettled03Id.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getGuaranteenum() {
        return guaranteenum;
    }

    public void setGuaranteenum(String guaranteenum) {
        this.guaranteenum = guaranteenum == null ? null : guaranteenum.trim();
    }

    public String getGuaranteebalance() {
        return guaranteebalance;
    }

    public void setGuaranteebalance(String guaranteebalance) {
        this.guaranteebalance = guaranteebalance == null ? null : guaranteebalance.trim();
    }

    public String getGuaranteepayoffdate() {
        return guaranteepayoffdate;
    }

    public void setGuaranteepayoffdate(String guaranteepayoffdate) {
        this.guaranteepayoffdate = guaranteepayoffdate == null ? null : guaranteepayoffdate.trim();
    }

    public String getInsurancenum() {
        return insurancenum;
    }

    public void setInsurancenum(String insurancenum) {
        this.insurancenum = insurancenum == null ? null : insurancenum.trim();
    }

    public String getInsurancebalance() {
        return insurancebalance;
    }

    public void setInsurancebalance(String insurancebalance) {
        this.insurancebalance = insurancebalance == null ? null : insurancebalance.trim();
    }

    public String getInsurancepayoffdate() {
        return insurancepayoffdate;
    }

    public void setInsurancepayoffdate(String insurancepayoffdate) {
        this.insurancepayoffdate = insurancepayoffdate == null ? null : insurancepayoffdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}