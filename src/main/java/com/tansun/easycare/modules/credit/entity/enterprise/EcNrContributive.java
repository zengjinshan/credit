package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_CONTRIBUTIVE")
public class EcNrContributive {
	@Id
    @Column(name = "CONTRIBUTIVE_ID",length = 40,nullable = false)
    private String contributiveId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "REGISTERDESC",length = 2000)
    private String registerdesc;
	@Column(name = "CONTNAME",length = 80)
    private String contname;
	@Column(name = "CERTTYPE",length = 200)
    private String certtype;
	@Column(name = "CERTNO",length = 18)
    private String certno;
	@Column(name = "CURRENCY",length = 200)
    private String currency;
	@Column(name = "CONTMONEY",length = 20)
    private String contmoney;
	@Column(name = "FUNDEDRATIO",length = 10)
    private String fundedratio;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getContributiveId() {
        return contributiveId;
    }

    public void setContributiveId(String contributiveId) {
        this.contributiveId = contributiveId == null ? null : contributiveId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getRegisterdesc() {
        return registerdesc;
    }

    public void setRegisterdesc(String registerdesc) {
        this.registerdesc = registerdesc == null ? null : registerdesc.trim();
    }

    public String getContname() {
        return contname;
    }

    public void setContname(String contname) {
        this.contname = contname == null ? null : contname.trim();
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

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getContmoney() {
        return contmoney;
    }

    public void setContmoney(String contmoney) {
        this.contmoney = contmoney == null ? null : contmoney.trim();
    }

    public String getFundedratio() {
        return fundedratio;
    }

    public void setFundedratio(String fundedratio) {
        this.fundedratio = fundedratio == null ? null : fundedratio.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}