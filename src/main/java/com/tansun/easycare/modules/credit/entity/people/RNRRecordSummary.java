package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_recordsummary")	
public class RNRRecordSummary {
	
	@Id
	@Column(name="RECORDSUMMARY_ID",length=40,nullable=false)
    private String recordsummaryId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="QUERYREASON",length=20)
    private String queryreason;
	@Column(name="SUM",precision=10,scale=0)
    private Long sum;
	@Column(name="TYPE",length=4)
    private String type;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getRecordsummaryId() {
        return recordsummaryId;
    }

    public void setRecordsummaryId(String recordsummaryId) {
        this.recordsummaryId = recordsummaryId == null ? null : recordsummaryId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getQueryreason() {
        return queryreason;
    }

    public void setQueryreason(String queryreason) {
        this.queryreason = queryreason == null ? null : queryreason.trim();
    }

    public Long getSum() {
        return sum;
    }

    public void setSum(Long sum) {
        this.sum = sum;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}