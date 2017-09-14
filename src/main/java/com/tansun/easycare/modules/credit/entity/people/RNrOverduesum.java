package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_overduesum")
public class RNrOverduesum {
	
	@Id
	@Column(name="OVERDUESUM_ID",length=40,nullable=false)
    private String overduesumId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="COUNT",precision=10,scale=0)
    private Long count;
	@Column(name="MONTHS",precision=10,scale=0)
    private Long months;
	@Column(name="HIGHESTOVERDUEAMOUNTPERMON",precision=20,scale=2)
    private BigDecimal highestoverdueamountpermon;
	@Column(name="MAXDURATION",precision=10,scale=0)
    private Long maxduration;
	@Column(name="TYPE",length=4)
    private String type;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getOverduesumId() {
        return overduesumId;
    }

    public void setOverduesumId(String overduesumId) {
        this.overduesumId = overduesumId == null ? null : overduesumId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public Long getCount() {
        return count;
    }

    public void setCount(Long count) {
        this.count = count;
    }

    public Long getMonths() {
        return months;
    }

    public void setMonths(Long months) {
        this.months = months;
    }

    public BigDecimal getHighestoverdueamountpermon() {
        return highestoverdueamountpermon;
    }

    public void setHighestoverdueamountpermon(BigDecimal highestoverdueamountpermon) {
        this.highestoverdueamountpermon = highestoverdueamountpermon;
    }

    public Long getMaxduration() {
        return maxduration;
    }

    public void setMaxduration(Long maxduration) {
        this.maxduration = maxduration;
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