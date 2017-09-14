package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Ec_Nr_Paid_Guaranteecom")
public class EcNrPaidGuaranteecom {
	@Id
    @Column(name = "PAID_GUARANTEECOM_ID",length = 40,nullable = false)
    private String paidGuaranteecomId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "CompensationOrganization",length = 14)
    private String compensationorganization;
	@Column(name = "LastCompensationDate",length = 10)
    private String lastcompensationdate;
	@Column(name = "CompensationSum",length = 20)
    private String compensationsum;
	@Column(name = "CompensationSettleDate",length = 20)
    private String compensationsettledate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPaidGuaranteecomId() {
        return paidGuaranteecomId;
    }

    public void setPaidGuaranteecomId(String paidGuaranteecomId) {
        this.paidGuaranteecomId = paidGuaranteecomId == null ? null : paidGuaranteecomId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getCompensationorganization() {
        return compensationorganization;
    }

    public void setCompensationorganization(String compensationorganization) {
        this.compensationorganization = compensationorganization == null ? null : compensationorganization.trim();
    }

    public String getLastcompensationdate() {
        return lastcompensationdate;
    }

    public void setLastcompensationdate(String lastcompensationdate) {
        this.lastcompensationdate = lastcompensationdate == null ? null : lastcompensationdate.trim();
    }

    public String getCompensationsum() {
        return compensationsum;
    }

    public void setCompensationsum(String compensationsum) {
        this.compensationsum = compensationsum == null ? null : compensationsum.trim();
    }

    public String getCompensationsettledate() {
        return compensationsettledate;
    }

    public void setCompensationsettledate(String compensationsettledate) {
        this.compensationsettledate = compensationsettledate == null ? null : compensationsettledate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}