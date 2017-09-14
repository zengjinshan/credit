package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_guaranteesummary")
public class RNrGuaranteesummary {
	
	@Id
	@Column(name="GUARANTEESUMMARY_ID",length=40,nullable=false)
    private String guaranteesummaryId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="COUNT",precision=10,scale=0)
    private Long count;
	@Column(name="AMOUNT",precision=20,scale=2)
    private BigDecimal amount;
	@Column(name="BALANCE",precision=20,scale=2)
    private BigDecimal balance;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getGuaranteesummaryId() {
        return guaranteesummaryId;
    }

    public void setGuaranteesummaryId(String guaranteesummaryId) {
        this.guaranteesummaryId = guaranteesummaryId == null ? null : guaranteesummaryId.trim();
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

    public BigDecimal getAmount() {
        return amount;
    }

    public void setAmount(BigDecimal amount) {
        this.amount = amount;
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}