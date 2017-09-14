package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SummarySettled03")
public class EcNrSummarysettled03 {
	
	@Id
    @Column(name = "SummarySettled03_id",length = 40,nullable = false)
    private String summarysettled03Id;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "GuaranteeNum",length = 8)
    private String guaranteenum;
	@Column(name = "GuaranteeMoney",length = 20)
    private String guaranteemoney;
	@Column(name = "GuaranteeCompensationDate",length = 10)
    private String guaranteecompensationdate;
	@Column(name = "InsuranceNum",length = 8)
    private String insurancenum;
	@Column(name = "InsuranceMoney",length = 20)
    private String insurancemoney;
	@Column(name = "InsuranceCompensationDate",length = 10)
    private String insurancecompensationdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSummarysettled03Id() {
        return summarysettled03Id;
    }

    public void setSummarysettled03Id(String summarysettled03Id) {
        this.summarysettled03Id = summarysettled03Id == null ? null : summarysettled03Id.trim();
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

    public String getGuaranteemoney() {
        return guaranteemoney;
    }

    public void setGuaranteemoney(String guaranteemoney) {
        this.guaranteemoney = guaranteemoney == null ? null : guaranteemoney.trim();
    }

    public String getGuaranteecompensationdate() {
        return guaranteecompensationdate;
    }

    public void setGuaranteecompensationdate(String guaranteecompensationdate) {
        this.guaranteecompensationdate = guaranteecompensationdate == null ? null : guaranteecompensationdate.trim();
    }

    public String getInsurancenum() {
        return insurancenum;
    }

    public void setInsurancenum(String insurancenum) {
        this.insurancenum = insurancenum == null ? null : insurancenum.trim();
    }

    public String getInsurancemoney() {
        return insurancemoney;
    }

    public void setInsurancemoney(String insurancemoney) {
        this.insurancemoney = insurancemoney == null ? null : insurancemoney.trim();
    }

    public String getInsurancecompensationdate() {
        return insurancecompensationdate;
    }

    public void setInsurancecompensationdate(String insurancecompensationdate) {
        this.insurancecompensationdate = insurancecompensationdate == null ? null : insurancecompensationdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}