package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_DEBTHISTORY")
public class EcNrDebthistory {
	@Id
    @Column(name = "DEBTHISTORY_ID",length = 40,nullable = false)
    private String debthistoryId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "TOALLIABILITIESSUM",length = 20)
    private String toalliabilitiessum;
	@Column(name = "TOALBADLIABILITIESSUM",length = 20)
    private String toalbadliabilitiessum;
	@Column(name = "LIABILITIESDATE",length = 10)
    private String liabilitiesdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getDebthistoryId() {
        return debthistoryId;
    }

    public void setDebthistoryId(String debthistoryId) {
        this.debthistoryId = debthistoryId == null ? null : debthistoryId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getToalliabilitiessum() {
        return toalliabilitiessum;
    }

    public void setToalliabilitiessum(String toalliabilitiessum) {
        this.toalliabilitiessum = toalliabilitiessum == null ? null : toalliabilitiessum.trim();
    }

    public String getToalbadliabilitiessum() {
        return toalbadliabilitiessum;
    }

    public void setToalbadliabilitiessum(String toalbadliabilitiessum) {
        this.toalbadliabilitiessum = toalbadliabilitiessum == null ? null : toalbadliabilitiessum.trim();
    }

    public String getLiabilitiesdate() {
        return liabilitiesdate;
    }

    public void setLiabilitiesdate(String liabilitiesdate) {
        this.liabilitiesdate = liabilitiesdate == null ? null : liabilitiesdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}