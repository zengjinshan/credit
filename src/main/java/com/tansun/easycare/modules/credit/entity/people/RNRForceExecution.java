package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_forceexecution")	
public class RNRForceExecution {
	
	@Id
	@Column(name="FORCEEXECUTION_ID",length=40,nullable=false)
    private String forceexecutionId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="COURT",length=80)
    private String court;
	@Column(name="CASEREASON",length=40)
    private String casereason;
	@Column(name="REGISTERDATE",length=10)
    private String registerdate;
	@Column(name="CLOSEDTYPE",length=100)
    private String closedtype;
	@Column(name="CASESTATE",length=20)
    private String casestate;
	@Column(name="CLOSEDDATE",length=10)
    private String closeddate;
	@Column(name="ENFORCEOBJECT",length=200)
    private String enforceobject;
	@Column(name="ENFORCEOBJECTMONEY",precision=20,scale=2)
    private BigDecimal enforceobjectmoney;
	@Column(name="ALREADYENFORCEOBJECT",length=200)
    private String alreadyenforceobject;
	@Column(name="ALREADYENFORCEOBJECTMONEY",precision=20,scale=2)
    private BigDecimal alreadyenforceobjectmoney;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getForceexecutionId() {
        return forceexecutionId;
    }

    public void setForceexecutionId(String forceexecutionId) {
        this.forceexecutionId = forceexecutionId == null ? null : forceexecutionId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getCourt() {
        return court;
    }

    public void setCourt(String court) {
        this.court = court == null ? null : court.trim();
    }

    public String getCasereason() {
        return casereason;
    }

    public void setCasereason(String casereason) {
        this.casereason = casereason == null ? null : casereason.trim();
    }

    public String getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(String registerdate) {
        this.registerdate = registerdate == null ? null : registerdate.trim();
    }

    public String getClosedtype() {
        return closedtype;
    }

    public void setClosedtype(String closedtype) {
        this.closedtype = closedtype == null ? null : closedtype.trim();
    }

    public String getCasestate() {
        return casestate;
    }

    public void setCasestate(String casestate) {
        this.casestate = casestate == null ? null : casestate.trim();
    }

    public String getCloseddate() {
        return closeddate;
    }

    public void setCloseddate(String closeddate) {
        this.closeddate = closeddate == null ? null : closeddate.trim();
    }

    public String getEnforceobject() {
        return enforceobject;
    }

    public void setEnforceobject(String enforceobject) {
        this.enforceobject = enforceobject == null ? null : enforceobject.trim();
    }

    public BigDecimal getEnforceobjectmoney() {
        return enforceobjectmoney;
    }

    public void setEnforceobjectmoney(BigDecimal enforceobjectmoney) {
        this.enforceobjectmoney = enforceobjectmoney;
    }

    public String getAlreadyenforceobject() {
        return alreadyenforceobject;
    }

    public void setAlreadyenforceobject(String alreadyenforceobject) {
        this.alreadyenforceobject = alreadyenforceobject == null ? null : alreadyenforceobject.trim();
    }

    public BigDecimal getAlreadyenforceobjectmoney() {
        return alreadyenforceobjectmoney;
    }

    public void setAlreadyenforceobjectmoney(BigDecimal alreadyenforceobjectmoney) {
        this.alreadyenforceobjectmoney = alreadyenforceobjectmoney;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}