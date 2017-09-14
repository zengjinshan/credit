package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_taxarrear")
public class RNRTaxArrear {
	
	@Id
	@Column(name="TAXARREAR_ID",length=40,nullable=false)
    private String taxarrearId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="ORGANNAME",length=50)
    private String organname;
	@Column(name="TAXARREAAMOUNT",precision=20,scale=2)
    private BigDecimal taxarreaamount;
	@Column(name="REVENUEDATE",length=10)
    private String revenuedate;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getTaxarrearId() {
        return taxarrearId;
    }

    public void setTaxarrearId(String taxarrearId) {
        this.taxarrearId = taxarrearId == null ? null : taxarrearId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
    }

    public BigDecimal getTaxarreaamount() {
        return taxarreaamount;
    }

    public void setTaxarreaamount(BigDecimal taxarreaamount) {
        this.taxarreaamount = taxarreaamount;
    }

    public String getRevenuedate() {
        return revenuedate;
    }

    public void setRevenuedate(String revenuedate) {
        this.revenuedate = revenuedate == null ? null : revenuedate.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}