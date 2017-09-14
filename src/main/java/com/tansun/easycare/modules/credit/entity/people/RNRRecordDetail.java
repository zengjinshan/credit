package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_recorddetail")
public class RNRRecordDetail {
	
	@Id
	@Column(name="RECORDDETAIL_ID",length=40,nullable=false)
    private String recorddetailId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="RECORDINFO_ID",length=40)
    private String recordinfoId;
	@Column(name="QUERYDATE",length=10)
    private String querydate;
	@Column(name="QUERIER",length=100)
    private String querier;
	@Column(name="QUERYREASON",length=20)
    private String queryreason;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getRecorddetailId() {
        return recorddetailId;
    }

    public void setRecorddetailId(String recorddetailId) {
        this.recorddetailId = recorddetailId == null ? null : recorddetailId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getRecordinfoId() {
        return recordinfoId;
    }

    public void setRecordinfoId(String recordinfoId) {
        this.recordinfoId = recordinfoId == null ? null : recordinfoId.trim();
    }

    public String getQuerydate() {
        return querydate;
    }

    public void setQuerydate(String querydate) {
        this.querydate = querydate == null ? null : querydate.trim();
    }

    public String getQuerier() {
        return querier;
    }

    public void setQuerier(String querier) {
        this.querier = querier == null ? null : querier.trim();
    }

    public String getQueryreason() {
        return queryreason;
    }

    public void setQueryreason(String queryreason) {
        this.queryreason = queryreason == null ? null : queryreason.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}