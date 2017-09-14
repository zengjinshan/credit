package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_residence")	
public class RNrResidence {
	
	@Id
	@Column(name="RESIDENCE_ID",length=40,nullable=false)
    private String residenceId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="ADDRESS",length=100)
    private String address;
	@Column(name="RESIDENCETYPE",length=15)
    private String residencetype;
	@Column(name="GETTIME",length=10)
    private String gettime;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getResidenceId() {
        return residenceId;
    }

    public void setResidenceId(String residenceId) {
        this.residenceId = residenceId == null ? null : residenceId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getResidencetype() {
        return residencetype;
    }

    public void setResidencetype(String residencetype) {
        this.residencetype = residencetype == null ? null : residencetype.trim();
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