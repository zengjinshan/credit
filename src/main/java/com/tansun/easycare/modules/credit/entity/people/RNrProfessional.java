package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_professional")
public class RNrProfessional {
	
	@Id
	@Column(name="PROFESSIONAL_ID",length=40,nullable=false)
    private String professionalId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="EMPLOYER",length=100)
    private String employer;
	@Column(name="EMPLOYERADDRESS",length=100)
    private String employeraddress;
	@Column(name="OCCUPATION",length=70)
    private String occupation;
	@Column(name="INDUSTRY",length=50)
    private String industry;
	@Column(name="DUTY",length=70)
    private String duty;
	@Column(name="TITLE",length=10)
    private String title;
	@Column(name="STARTYEAR",length=4)
    private String startyear;
	@Column(name="GETTIME",length=10)
    private String gettime;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getProfessionalId() {
        return professionalId;
    }

    public void setProfessionalId(String professionalId) {
        this.professionalId = professionalId == null ? null : professionalId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getEmployer() {
        return employer;
    }

    public void setEmployer(String employer) {
        this.employer = employer == null ? null : employer.trim();
    }

    public String getEmployeraddress() {
        return employeraddress;
    }

    public void setEmployeraddress(String employeraddress) {
        this.employeraddress = employeraddress == null ? null : employeraddress.trim();
    }

    public String getOccupation() {
        return occupation;
    }

    public void setOccupation(String occupation) {
        this.occupation = occupation == null ? null : occupation.trim();
    }

    public String getIndustry() {
        return industry;
    }

    public void setIndustry(String industry) {
        this.industry = industry == null ? null : industry.trim();
    }

    public String getDuty() {
        return duty;
    }

    public void setDuty(String duty) {
        this.duty = duty == null ? null : duty.trim();
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title == null ? null : title.trim();
    }

    public String getStartyear() {
        return startyear;
    }

    public void setStartyear(String startyear) {
        this.startyear = startyear == null ? null : startyear.trim();
    }

    public String getGettime() {
        return gettime;
    }

    public void setGettime(String gettime) {
        this.gettime = gettime == null ? null : gettime.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}