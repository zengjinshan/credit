package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

import org.junit.ClassRule;


@Entity
@Table(name = "r_nr_guarantee")
public class RNrGuarantee {
	
	@Id
	@Column(name="GUARANTEE_ID",length=40,nullable=false)
    private String guaranteeId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="GUARANTEEINFO_ID",length=40)
    private String guaranteeinfoId;
	@Column(name="ORGANNAME",length=100)
    private String organname;
	@Column(name="CONTRACTMONEY",precision=20,scale=2)
    private BigDecimal contractmoney;
	@Column(name="BEGINDATE",length=10)
    private String begindate;
	@Column(name="ENDDATE",length=10)
    private String enddate;
	@Column(name="GUANANTEEMONEY",precision=20,scale=2)
    private BigDecimal guananteemoney;
	@Column(name="GUARANTEEBALANCE",precision=20,scale=2)
    private BigDecimal guaranteebalance;
	@Column(name="CLASS5STATE",length=20)
    private String class5state;
	@Column(name="BILLINGDATE",length=10)
    private String billingdate;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getGuaranteeId() {
        return guaranteeId;
    }

    public void setGuaranteeId(String guaranteeId) {
        this.guaranteeId = guaranteeId == null ? null : guaranteeId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getGuaranteeinfoId() {
        return guaranteeinfoId;
    }

    public void setGuaranteeinfoId(String guaranteeinfoId) {
        this.guaranteeinfoId = guaranteeinfoId == null ? null : guaranteeinfoId.trim();
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
    }

    public BigDecimal getContractmoney() {
        return contractmoney;
    }

    public void setContractmoney(BigDecimal contractmoney) {
        this.contractmoney = contractmoney;
    }

    public String getBegindate() {
        return begindate;
    }

    public void setBegindate(String begindate) {
        this.begindate = begindate == null ? null : begindate.trim();
    }

    public String getEnddate() {
        return enddate;
    }

    public void setEnddate(String enddate) {
        this.enddate = enddate == null ? null : enddate.trim();
    }

    public BigDecimal getGuananteemoney() {
        return guananteemoney;
    }

    public void setGuananteemoney(BigDecimal guananteemoney) {
        this.guananteemoney = guananteemoney;
    }

    public BigDecimal getGuaranteebalance() {
        return guaranteebalance;
    }

    public void setGuaranteebalance(BigDecimal guaranteebalance) {
        this.guaranteebalance = guaranteebalance;
    }

    public String getClass5state() {
        return class5state;
    }

    public void setClass5state(String class5state) {
        this.class5state = class5state == null ? null : class5state.trim();
    }

    public String getBillingdate() {
        return billingdate;
    }

    public void setBillingdate(String billingdate) {
        this.billingdate = billingdate == null ? null : billingdate.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}