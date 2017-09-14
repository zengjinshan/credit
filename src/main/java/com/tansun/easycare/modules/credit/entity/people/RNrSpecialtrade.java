package com.tansun.easycare.modules.credit.entity.people;

import java.math.BigDecimal;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "r_nr_specialtrade")
public class RNrSpecialtrade {
	@Id
	@Column(name="SPECIALTRADE_ID",length=40,nullable=false)
    private String specialtradeId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="SUPER_ID",length=40)
    private String superId;
	@Column(name="TYPE",length=20)
    private String type;
	@Column(name="GETTIME",length=10)
    private String gettime;
    @Column(name="CHANGINGMONTHS",precision=10,scale=0)
    private Long changingmonths;
    @Column(name="CHANGINGAMOUNT",precision=20,scale=2)
    private BigDecimal changingamount;
    @Column(name="CONTENT",length=2000)
    private String content;
    @Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getSpecialtradeId() {
        return specialtradeId;
    }

    public void setSpecialtradeId(String specialtradeId) {
        this.specialtradeId = specialtradeId == null ? null : specialtradeId.trim();
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

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getGettime() {
        return gettime;
    }

    public void setGettime(String gettime) {
        this.gettime = gettime == null ? null : gettime.trim();
    }

    public Long getChangingmonths() {
        return changingmonths;
    }

    public void setChangingmonths(Long changingmonths) {
        this.changingmonths = changingmonths;
    }

    public BigDecimal getChangingamount() {
        return changingamount;
    }

    public void setChangingamount(BigDecimal changingamount) {
        this.changingamount = changingamount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}