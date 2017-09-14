package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SeniorExecutive")
public class EcNrSeniorexecutive {
	@Id
    @Column(name = "SeniorExecutive_id",length = 40,nullable = false)
    private String seniorexecutiveId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Manatypecode",length = 200)
    private String manatypecode;
	@Column(name = "Mananame",length = 30)
    private String mananame;
	@Column(name = "Certtype",length = 200)
    private String certtype;
	@Column(name = "Certno",length = 18)
    private String certno;
	@Column(name = "Gender",length = 200)
    private String gender;
	@Column(name = "Birthday",length = 10)
    private String birthday;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSeniorexecutiveId() {
        return seniorexecutiveId;
    }

    public void setSeniorexecutiveId(String seniorexecutiveId) {
        this.seniorexecutiveId = seniorexecutiveId == null ? null : seniorexecutiveId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getManatypecode() {
        return manatypecode;
    }

    public void setManatypecode(String manatypecode) {
        this.manatypecode = manatypecode == null ? null : manatypecode.trim();
    }

    public String getMananame() {
        return mananame;
    }

    public void setMananame(String mananame) {
        this.mananame = mananame == null ? null : mananame.trim();
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

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}