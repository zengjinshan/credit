package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_assetdisposition")
public class RNRAssetDisposition {
	@Id
	@Column(name="ASSETDISPOSITION_ID",length=40,nullable=false)
    private String assetdispositionId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="ORGANNAME",length=100)
    private String organname;
	@Column(name="RECEIVETIME",length=10)
    private String receivetime;
	@Column(name="MONEY",precision=20,scale=2)
    private BigDecimal money;
	@Column(name="LATESTREPAYDATE",length=10)
    private String latestrepaydate;
	@Column(name="BALANCE",precision=20,scale=2)
    private BigDecimal balance;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getAssetdispositionId() {
        return assetdispositionId;
    }

    public void setAssetdispositionId(String assetdispositionId) {
        this.assetdispositionId = assetdispositionId == null ? null : assetdispositionId.trim();
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

    public String getReceivetime() {
        return receivetime;
    }

    public void setReceivetime(String receivetime) {
        this.receivetime = receivetime == null ? null : receivetime.trim();
    }

    public BigDecimal getMoney() {
        return money;
    }

    public void setMoney(BigDecimal money) {
        this.money = money;
    }

    public String getLatestrepaydate() {
        return latestrepaydate;
    }

    public void setLatestrepaydate(String latestrepaydate) {
        this.latestrepaydate = latestrepaydate == null ? null : latestrepaydate.trim();
    }

    public BigDecimal getBalance() {
        return balance;
    }

    public void setBalance(BigDecimal balance) {
        this.balance = balance;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}