package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_fellbacksum")
public class RNRFellbackSum {
	
	@Id
	@Column(name="FELLBACKSUM_ID",length=40,nullable=false)
    private String fellbacksumId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="COUNT",precision=10,scale=0)
    private Long count;
	@Column(name="BALANCE",precision=20,scale=2)
    private BigDecimal balance;
	@Column(name="TYPE",length=4)
    private String type;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getFellbacksumId() {
        return fellbacksumId;
    }

    public void setFellbacksumId(String fellbacksumId) {
        this.fellbacksumId = fellbacksumId == null ? null : fellbacksumId.trim();
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

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
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