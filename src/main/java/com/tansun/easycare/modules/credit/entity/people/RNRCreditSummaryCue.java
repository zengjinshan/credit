package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_creditsummarycue")
public class RNRCreditSummaryCue {
	
	@Id
	@Column(name="CREDITSUMMARYCUE_ID",length=40,nullable=false)
    private String creditsummarycueId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="PERHOUSELOANCOUNT",precision=10,scale=0)
    private Long perhouseloancount;
	@Column(name="PERBUSINESSHOUSELOANCOUNT",precision=10,scale=0)
    private Long perbusinesshouseloancount;
	@Column(name="OTHERLOANCOUNT",precision=10,scale=0)
    private Long otherloancount;
	@Column(name="FIRSTLOANOPENMONTH",length=7)
    private String firstloanopenmonth;
	@Column(name="LOANCARDCOUNT",precision=10,scale=0)
    private Long loancardcount;
	@Column(name="FIRSTLOANCARDOPENMONTH",length=7)
    private String firstloancardopenmonth;
	@Column(name="STANDARDLOANCARDCOUNT",precision=10,scale=0)
    private Long standardloancardcount;
	@Column(name="FIRSTSTANDARDLOANCARDOPENMONTH",precision=10,scale=0)
    private String firststandardloancardopenmonth;
	@Column(name="ANNOUNCECOUNT",precision=10,scale=0)
    private Long announcecount;
	@Column(name="DISSENTCOUNT",precision=10,scale=0)
    private Long dissentcount;
	@Column(name="TIME_STAMP")
    private Date timeStamp;

    public String getCreditsummarycueId() {
        return creditsummarycueId;
    }

    public void setCreditsummarycueId(String creditsummarycueId) {
        this.creditsummarycueId = creditsummarycueId == null ? null : creditsummarycueId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public Long getPerhouseloancount() {
        return perhouseloancount;
    }

    public void setPerhouseloancount(Long perhouseloancount) {
        this.perhouseloancount = perhouseloancount;
    }

    public Long getPerbusinesshouseloancount() {
        return perbusinesshouseloancount;
    }

    public void setPerbusinesshouseloancount(Long perbusinesshouseloancount) {
        this.perbusinesshouseloancount = perbusinesshouseloancount;
    }

    public Long getOtherloancount() {
        return otherloancount;
    }

    public void setOtherloancount(Long otherloancount) {
        this.otherloancount = otherloancount;
    }

    public String getFirstloanopenmonth() {
        return firstloanopenmonth;
    }

    public void setFirstloanopenmonth(String firstloanopenmonth) {
        this.firstloanopenmonth = firstloanopenmonth == null ? null : firstloanopenmonth.trim();
    }

    public Long getLoancardcount() {
        return loancardcount;
    }

    public void setLoancardcount(Long loancardcount) {
        this.loancardcount = loancardcount;
    }

    public String getFirstloancardopenmonth() {
        return firstloancardopenmonth;
    }

    public void setFirstloancardopenmonth(String firstloancardopenmonth) {
        this.firstloancardopenmonth = firstloancardopenmonth == null ? null : firstloancardopenmonth.trim();
    }

    public Long getStandardloancardcount() {
        return standardloancardcount;
    }

    public void setStandardloancardcount(Long standardloancardcount) {
        this.standardloancardcount = standardloancardcount;
    }

    public String getFirststandardloancardopenmonth() {
        return firststandardloancardopenmonth;
    }

    public void setFirststandardloancardopenmonth(String firststandardloancardopenmonth) {
        this.firststandardloancardopenmonth = firststandardloancardopenmonth == null ? null : firststandardloancardopenmonth.trim();
    }

    public Long getAnnouncecount() {
        return announcecount;
    }

    public void setAnnouncecount(Long announcecount) {
        this.announcecount = announcecount;
    }

    public Long getDissentcount() {
        return dissentcount;
    }

    public void setDissentcount(Long dissentcount) {
        this.dissentcount = dissentcount;
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }
}