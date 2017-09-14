package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "r_nr_adminpunishment")
public class RNRAdminPunishment {
	
	@Id
	@Column(name="ADMINPUNISHMENT_ID",length=40,nullable=false)
    private String adminpunishmentId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="ORGANNAME",length=100)
    private String organname;
	@Column(name="CONTENT",length=100)
    private String content;
	@Column(name="MONEY",precision=20,scale=2)
    private BigDecimal money;
	@Column(name="BEGINDATE",length=10)
    private String begindate;
	@Column(name="ENDDATE",length=10)
    private String enddate;
	@Column(name="RESULT",length=100)
    private String result;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getAdminpunishmentId() {
        return adminpunishmentId;
    }

    public void setAdminpunishmentId(String adminpunishmentId) {
        this.adminpunishmentId = adminpunishmentId == null ? null : adminpunishmentId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
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

    public String getResult() {
        return result;
    }

    public void setResult(String result) {
        this.result = result == null ? null : result.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}