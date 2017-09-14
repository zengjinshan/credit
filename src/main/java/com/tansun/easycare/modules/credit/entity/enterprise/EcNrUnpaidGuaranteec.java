package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Ec_Nr_Unpaid_Guaranteec")
public class EcNrUnpaidGuaranteec {
	@Id
    @Column(name = "UNPAID_GUARANTEEC_ID",length = 40,nullable = false)
    private String unpaidGuaranteecId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "CompensationOrganization",length = 14)
    private String compensationorganization;
	@Column(name = "LastCompensationDate",length = 10)
    private String lastcompensationdate;
	@Column(name = "CompensationSum",length = 20)
    private String compensationsum;
	@Column(name = "CompensationOverage",length = 20)
    private String compensationoverage;
	@Column(name = "LastPayOffDate",length = 10)
    private String lastpayoffdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUnpaidGuaranteecId() {
        return unpaidGuaranteecId;
    }

    public void setUnpaidGuaranteecId(String unpaidGuaranteecId) {
        this.unpaidGuaranteecId = unpaidGuaranteecId == null ? null : unpaidGuaranteecId.trim();
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

    public String getCompensationoverage() {
        return compensationoverage;
    }

    public void setCompensationoverage(String compensationoverage) {
        this.compensationoverage = compensationoverage == null ? null : compensationoverage.trim();
    }

    public String getLastpayoffdate() {
        return lastpayoffdate;
    }

    public void setLastpayoffdate(String lastpayoffdate) {
        this.lastpayoffdate = lastpayoffdate == null ? null : lastpayoffdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}