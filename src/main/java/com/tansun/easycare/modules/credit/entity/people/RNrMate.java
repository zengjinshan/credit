package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_mate")
public class RNrMate {
	
	@Id
	@Column(name="MATE_ID",length=40,nullable=false)
    private String mateId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="NAME",length=30)
    private String name;
	@Column(name="CERTTYPE",length=40)
    private String certtype;
	@Column(name="CERTNO",length=30)
    private String certno;
	@Column(name="EMPLOYER",length=60)
    private String employer;
	@Column(name="TELEPHONENO",length=25)
    private String telephoneno;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getMateId() {
        return mateId;
    }

    public void setMateId(String mateId) {
        this.mateId = mateId == null ? null : mateId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getCerttype() {
        return certtype;
    }

    public void setCerttype(String certtype) {
        this.certtype = certtype == null ? null : certtype.trim();
    }

    public String getCertno() {
        return certno;
    }

    public void setCertno(String certno) {
        this.certno = certno == null ? null : certno.trim();
    }

    public String getEmployer() {
        return employer;
    }

    public void setEmployer(String employer) {
        this.employer = employer == null ? null : employer.trim();
    }

    public String getTelephoneno() {
        return telephoneno;
    }

    public void setTelephoneno(String telephoneno) {
        this.telephoneno = telephoneno == null ? null : telephoneno.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}