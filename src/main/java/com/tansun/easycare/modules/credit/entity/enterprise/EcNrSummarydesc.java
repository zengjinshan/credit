package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SummaryDesc")
public class EcNrSummarydesc {
	
	@Id
    @Column(name = "SummaryDesc_id",length = 40,nullable = false)
    private String summarydescId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "SummaryDesc",length = 2000)
    private String summarydesc;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSummarydescId() {
        return summarydescId;
    }

    public void setSummarydescId(String summarydescId) {
        this.summarydescId = summarydescId == null ? null : summarydescId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getSummarydesc() {
        return summarydesc;
    }

    public void setSummarydesc(String summarydesc) {
        this.summarydesc = summarydesc == null ? null : summarydesc.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}