package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_endowmentinsurancedeposit")
public class RNrEndowmentinsurancedeposit {
	
	@Id
	@Column(name="ENDOWMENT_ID",length=40,nullable=false)
    private String endowmentId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="AREA",length=60)
    private String area;
	@Column(name="REGISTERDATE",length=10)
    private String registerdate;
	@Column(name="MONTHDURATION",precision=4,scale=0) 
    private Short monthduration;
	@Column(name="WORKDATE",length=7)
    private String workdate;
	@Column(name="STATE",length=100)
    private String state;
	@Column(name="OWNBASICMONEY",precision=20,scale=2)
    private BigDecimal ownbasicmoney;
	@Column(name="MONEY",precision=20,scale=2)
    private BigDecimal money;
	@Column(name="ORGANNAME",length=100)
    private String organname;
	@Column(name="PAUSEREASON",length=100)
    private String pausereason;
	@Column(name="GETTIME",length=10)
    private String gettime;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getEndowmentId() {
        return endowmentId;
    }

    public void setEndowmentId(String endowmentId) {
        this.endowmentId = endowmentId == null ? null : endowmentId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getArea() {
        return area;
    }

    public void setArea(String area) {
        this.area = area == null ? null : area.trim();
    }

    public String getRegisterdate() {
        return registerdate;
    }

    public void setRegisterdate(String registerdate) {
        this.registerdate = registerdate == null ? null : registerdate.trim();
    }

    public Short getMonthduration() {
        return monthduration;
    }

    public void setMonthduration(Short monthduration) {
        this.monthduration = monthduration;
    }

    public String getWorkdate() {
        return workdate;
    }

    public void setWorkdate(String workdate) {
        this.workdate = workdate == null ? null : workdate.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public BigDecimal getOwnbasicmoney() {
        return ownbasicmoney;
    }

    public void setOwnbasicmoney(BigDecimal ownbasicmoney) {
        this.ownbasicmoney = ownbasicmoney;
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
    }

    public String getPausereason() {
        return pausereason;
    }

    public void setPausereason(String pausereason) {
        this.pausereason = pausereason == null ? null : pausereason.trim();
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