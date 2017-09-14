package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_IDENTITY")
public class EcNrIdentity {
	@Id
    @Column(name = "IDENTITY_ID",length = 40,nullable = false)
    private String identityId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "BORRNAME",length = 80)
    private String borrname;
	@Column(name = "REGIADDR",length = 80)
    private String regiaddr;
	@Column(name = "REGINO",length = 20)
    private String regino;
	@Column(name = "REGIDATE",length = 10)
    private String regidate;
	@Column(name = "GSREGINO",length = 20)
    private String gsregino;
	@Column(name = "LOANCARDSTATUS",length = 200)
    private String loancardstatus;
	@Column(name = "CONTBORRCODE",length = 18)
    private String contborrcode;
	@Column(name = "LICENSEMATDATE",length = 10)
    private String licensematdate;
	@Column(name = "DSREGINO",length = 20)
    private String dsregino;
	@Column(name = "LASTDATE",length = 10)
    private String lastdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

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

    public String getBorrname() {
        return borrname;
    }

    public void setBorrname(String borrname) {
        this.borrname = borrname == null ? null : borrname.trim();
    }

    public String getRegiaddr() {
        return regiaddr;
    }

    public void setRegiaddr(String regiaddr) {
        this.regiaddr = regiaddr == null ? null : regiaddr.trim();
    }

    public String getRegino() {
        return regino;
    }

    public void setRegino(String regino) {
        this.regino = regino == null ? null : regino.trim();
    }

    public String getRegidate() {
        return regidate;
    }

    public void setRegidate(String regidate) {
        this.regidate = regidate == null ? null : regidate.trim();
    }

    public String getGsregino() {
        return gsregino;
    }

    public void setGsregino(String gsregino) {
        this.gsregino = gsregino == null ? null : gsregino.trim();
    }

    public String getLoancardstatus() {
        return loancardstatus;
    }

    public void setLoancardstatus(String loancardstatus) {
        this.loancardstatus = loancardstatus == null ? null : loancardstatus.trim();
    }

    public String getContborrcode() {
        return contborrcode;
    }

    public void setContborrcode(String contborrcode) {
        this.contborrcode = contborrcode == null ? null : contborrcode.trim();
    }

    public String getLicensematdate() {
        return licensematdate;
    }

    public void setLicensematdate(String licensematdate) {
        this.licensematdate = licensematdate == null ? null : licensematdate.trim();
    }

    public String getDsregino() {
        return dsregino;
    }

    public void setDsregino(String dsregino) {
        this.dsregino = dsregino == null ? null : dsregino.trim();
    }

    public String getLastdate() {
        return lastdate;
    }

    public void setLastdate(String lastdate) {
        this.lastdate = lastdate == null ? null : lastdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}