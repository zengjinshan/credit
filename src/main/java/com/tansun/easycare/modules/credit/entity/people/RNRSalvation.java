package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_salvation")	
public class RNRSalvation {
	
	@Id
	@Column(name="SALVATION_ID",length=40,nullable=false)
    private String salvationId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="PERSONNELTYPE",length=200)
    private String personneltype;
	@Column(name="AREA",length=60)
    private String area;
	@Column(name="ORGANNAME",length=100)
    private String organname;
	@Column(name="MONEY",precision=20,scale=2)
    private BigDecimal money;
    @Column(name="REGISTERDATE",length=10)
    private String registerdate;
    @Column(name="PASSDATE",length=10)
    private String passdate;
    @Column(name="GETTIME",length=10)
    private String gettime;
    @Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getSalvationId() {
        return salvationId;
    }

    public void setSalvationId(String salvationId) {
        this.salvationId = salvationId == null ? null : salvationId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getPersonneltype() {
        return personneltype;
    }

    public void setPersonneltype(String personneltype) {
        this.personneltype = personneltype == null ? null : personneltype.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public String getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(String registerdate) {
        this.registerdate = registerdate == null ? null : registerdate.trim();
    }

    public String getPassdate() {
        return passdate;
    }

    public void setPassdate(String passdate) {
        this.passdate = passdate == null ? null : passdate.trim();
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