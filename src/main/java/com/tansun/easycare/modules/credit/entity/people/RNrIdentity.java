package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_identity")
public class RNrIdentity {
	
	@Id
	@Column(name="IDENTITY_ID",length=40,nullable=false)
    private String identityId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="GENDER",length=20)
    private String gender;
	@Column(name="BIRTHDAY",length=10)
    private String birthday;
	@Column(name="MARITALSTATE",length=45)
    private String maritalstate;
	@Column(name="MOBILE",length=25)
    private String mobile;
	@Column(name="OFFICETELEPHONENO",length=25)
    private String officetelephoneno;
	@Column(name="HOMETELEPHONENO",length=25)
    private String hometelephoneno;
	@Column(name="EDULEVEL",length=65)
    private String edulevel;
	@Column(name="EDUDEGREE",length=20)
    private String edudegree;
	@Column(name="POSTADDRESS",length=100)
    private String postaddress;
	@Column(name="REGISTEREDADDRESS",length=100)
    private String registeredaddress;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getIdentityId() {
        return identityId;
    }

    public void setIdentityId(String identityId) {
        this.identityId = identityId == null ? null : identityId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender == null ? null : gender.trim();
    }

    public String getBirthday() {
        return birthday;
    }

    public void setBirthday(String birthday) {
        this.birthday = birthday == null ? null : birthday.trim();
    }

    public String getMaritalstate() {
        return maritalstate;
    }

    public void setMaritalstate(String maritalstate) {
        this.maritalstate = maritalstate == null ? null : maritalstate.trim();
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile == null ? null : mobile.trim();
    }

    public String getOfficetelephoneno() {
        return officetelephoneno;
    }

    public void setOfficetelephoneno(String officetelephoneno) {
        this.officetelephoneno = officetelephoneno == null ? null : officetelephoneno.trim();
    }

    public String getHometelephoneno() {
        return hometelephoneno;
    }

    public void setHometelephoneno(String hometelephoneno) {
        this.hometelephoneno = hometelephoneno == null ? null : hometelephoneno.trim();
    }

    public String getEdulevel() {
        return edulevel;
    }

    public void setEdulevel(String edulevel) {
        this.edulevel = edulevel == null ? null : edulevel.trim();
    }

    public String getEdudegree() {
        return edudegree;
    }

    public void setEdudegree(String edudegree) {
        this.edudegree = edudegree == null ? null : edudegree.trim();
    }

    public String getPostaddress() {
        return postaddress;
    }

    public void setPostaddress(String postaddress) {
        this.postaddress = postaddress == null ? null : postaddress.trim();
    }

    public String getRegisteredaddress() {
        return registeredaddress;
    }

    public void setRegisteredaddress(String registeredaddress) {
        this.registeredaddress = registeredaddress == null ? null : registeredaddress.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}