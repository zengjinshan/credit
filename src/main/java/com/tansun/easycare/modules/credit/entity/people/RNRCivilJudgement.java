package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;



@Entity
@Table(name = "r_nr_civiljudgement")
public class RNRCivilJudgement {
	
	@Id
	@Column(name="CIVILJUDGEMENT_ID",length=40,nullable=false)
    private String civiljudgementId;
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
	@Column(name="CASERESULT",length=200)
    private String caseresult;
	@Column(name="CASEVALIDATEDATE",length=10)
    private String casevalidatedate;
	@Column(name="SUITOBJECT",length=200)
    private String suitobject;
	@Column(name="SUITOBJECTMONEY",precision=20,scale=2)
    private BigDecimal suitobjectmoney;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getCiviljudgementId() {
        return civiljudgementId;
    }

    public void setCiviljudgementId(String civiljudgementId) {
        this.civiljudgementId = civiljudgementId == null ? null : civiljudgementId.trim();
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

    public String getCaseresult() {
        return caseresult;
    }

    public void setCaseresult(String caseresult) {
        this.caseresult = caseresult == null ? null : caseresult.trim();
    }

    public String getCasevalidatedate() {
        return casevalidatedate;
    }

    public void setCasevalidatedate(String casevalidatedate) {
        this.casevalidatedate = casevalidatedate == null ? null : casevalidatedate.trim();
    }

    public String getSuitobject() {
        return suitobject;
    }

    public void setSuitobject(String suitobject) {
        this.suitobject = suitobject == null ? null : suitobject.trim();
    }

    public BigDecimal getSuitobjectmoney() {
        return suitobjectmoney;
    }

    public void setSuitobjectmoney(BigDecimal suitobjectmoney) {
        this.suitobjectmoney = suitobjectmoney;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}