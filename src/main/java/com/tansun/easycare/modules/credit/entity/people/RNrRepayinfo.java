package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "r_nr_repayinfo")	
public class RNrRepayinfo {
	
	@Id
	@Column(name="REPAYINFO_ID",length=40,nullable=false)
    private String repayinfoId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="SUPER_ID",length=40)
    private String superId;
	@Column(name="STATEENDDATE",length=20)
    private String stateenddate;
	@Column(name="STATEENDMONTH",length=20)
    private String stateendmonth;
	@Column(name="SHARECREDITLIMITAMOUNT",precision=20,scale=2)
    private BigDecimal sharecreditlimitamount;
	@Column(name="USEDCREDITLIMITAMOUNT",precision=20,scale=2)
    private BigDecimal usedcreditlimitamount;
	@Column(name="LATEST6MONTHUSEDAVGAMOUNT",precision=20,scale=2)
    private BigDecimal latest6monthusedavgamount;
	@Column(name="USEDHIGHESTAMOUNT",precision=20,scale=2)
    private BigDecimal usedhighestamount;
	@Column(name="SCHEDULEDPAYMENTDATE",length=10)
    private String scheduledpaymentdate;
	@Column(name="SCHEDULEDPAYMENTAMOUNT",precision=20,scale=2)
    private BigDecimal scheduledpaymentamount;
	@Column(name="ACTUALPAYMENTAMOUNT",precision=20,scale=2)
    private BigDecimal actualpaymentamount;
	@Column(name="RECENTPAYDATE",length=10)
    private String recentpaydate;
	@Column(name="TIME_STAMP")
    private Date timeStamp;
	@Column(name="OVERDUEOVER180AMOUNT",precision=10,scale=0)
    private Long overdueover180amount;

    public String getRepayinfoId() {
        return repayinfoId;
    }

    public void setRepayinfoId(String repayinfoId) {
        this.repayinfoId = repayinfoId == null ? null : repayinfoId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getSuperId() {
        return superId;
    }

    public void setSuperId(String superId) {
        this.superId = superId == null ? null : superId.trim();
    }

    public String getStateenddate() {
        return stateenddate;
    }

    public void setStateenddate(String stateenddate) {
        this.stateenddate = stateenddate == null ? null : stateenddate.trim();
    }

    public String getStateendmonth() {
        return stateendmonth;
    }

    public void setStateendmonth(String stateendmonth) {
        this.stateendmonth = stateendmonth == null ? null : stateendmonth.trim();
    }

    public BigDecimal getSharecreditlimitamount() {
        return sharecreditlimitamount;
    }

    public void setSharecreditlimitamount(BigDecimal sharecreditlimitamount) {
        this.sharecreditlimitamount = sharecreditlimitamount;
    }

    public BigDecimal getUsedcreditlimitamount() {
        return usedcreditlimitamount;
    }

    public void setUsedcreditlimitamount(BigDecimal usedcreditlimitamount) {
        this.usedcreditlimitamount = usedcreditlimitamount;
    }

    public BigDecimal getLatest6monthusedavgamount() {
        return latest6monthusedavgamount;
    }

    public void setLatest6monthusedavgamount(BigDecimal latest6monthusedavgamount) {
        this.latest6monthusedavgamount = latest6monthusedavgamount;
    }

    public BigDecimal getUsedhighestamount() {
        return usedhighestamount;
    }

    public void setUsedhighestamount(BigDecimal usedhighestamount) {
        this.usedhighestamount = usedhighestamount;
    }

    public String getScheduledpaymentdate() {
        return scheduledpaymentdate;
    }

    public void setScheduledpaymentdate(String scheduledpaymentdate) {
        this.scheduledpaymentdate = scheduledpaymentdate == null ? null : scheduledpaymentdate.trim();
    }

    public BigDecimal getScheduledpaymentamount() {
        return scheduledpaymentamount;
    }

    public void setScheduledpaymentamount(BigDecimal scheduledpaymentamount) {
        this.scheduledpaymentamount = scheduledpaymentamount;
    }

    public BigDecimal getActualpaymentamount() {
        return actualpaymentamount;
    }

    public void setActualpaymentamount(BigDecimal actualpaymentamount) {
        this.actualpaymentamount = actualpaymentamount;
    }

    public String getRecentpaydate() {
        return recentpaydate;
    }

    public void setRecentpaydate(String recentpaydate) {
        this.recentpaydate = recentpaydate == null ? null : recentpaydate.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

    public Long getOverdueover180amount() {
        return overdueover180amount;
    }

    public void setOverdueover180amount(Long overdueover180amount) {
        this.overdueover180amount = overdueover180amount;
    }
}