package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "R_NR_ACCFUND")
public class RNRAccFund {
	
	@Id
    @Column(name = "ACCFUND_ID",length = 40,nullable = false)
    private String accfundId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "AREA",length = 100)
    private String area;
	@Column(name = "REGISTERDATE",length = 10)
    private String registerdate;
	@Column(name = "FIRSTMONTH",length = 7)
    private String firstmonth;
	@Column(name = "TOMONTH",length = 7)
    private String tomonth;
	@Column(name = "STATE",length = 50)
    private String state;
	@Column(name = "PAY",precision=20,scale=2)
    private BigDecimal pay;
	@Column(name = "OWNPERCENT",length = 3)
    private String ownpercent;
	@Column(name = "COMPERCENT",length = 3)
    private String compercent;
	@Column(name = "ORGANNAME",length = 60)
    private String organname;
	@Column(name = "GETTIME",length = 10)
    private String gettime;
	@Column(name = "TIME_STAMP")
    private Date timeStamp;

    public String getAccfundId() {
        return accfundId;
    }

    public void setAccfundId(String accfundId) {
        this.accfundId = accfundId == null ? null : accfundId.trim();
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

    public String getFirstmonth() {
        return firstmonth;
    }

    public void setFirstmonth(String firstmonth) {
        this.firstmonth = firstmonth == null ? null : firstmonth.trim();
    }

    public String getTomonth() {
        return tomonth;
    }

    public void setTomonth(String tomonth) {
        this.tomonth = tomonth == null ? null : tomonth.trim();
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state == null ? null : state.trim();
    }

    public BigDecimal getPay() {
        return pay;
    }

    public void setPay(BigDecimal pay) {
        this.pay = pay;
    }

    public String getOwnpercent() {
        return ownpercent;
    }

    public void setOwnpercent(String ownpercent) {
        this.ownpercent = ownpercent == null ? null : ownpercent.trim();
    }

    public String getCompercent() {
        return compercent;
    }

    public void setCompercent(String compercent) {
        this.compercent = compercent == null ? null : compercent.trim();
    }

    public String getOrganname() {
        return organname;
    }

    public void setOrganname(String organname) {
        this.organname = organname == null ? null : organname.trim();
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