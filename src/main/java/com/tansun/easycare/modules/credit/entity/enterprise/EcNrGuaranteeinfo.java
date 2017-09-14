package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_GUARANTEEINFO")
public class EcNrGuaranteeinfo {
	
	@Id
    @Column(name = "GUARANTEE_ID",length = 40,nullable = false)
    private String guaranteeId;
	@Column(name = "REPORT_ID",length = 40)
    private String reportId;
	@Column(name = "GUARANTEETYPE",length = 200)
    private String guaranteetype;
	@Column(name = "CONTRACTCODE",length = 60)
    private String contractcode;
	@Column(name = "GUARANTOR",length = 80)
    private String guarantor;
	@Column(name = "CERTTYPE",length = 200)
    private String certtype;
	@Column(name = "CERTNO",length = 18)
    private String certno;
	@Column(name = "CURRENCY",length = 200)
    private String currency;
	@Column(name = "GUARANTEEAMOUNT",length = 20)
    private String guaranteeamount;
	@Column(name = "GUARANTEEKINDCODE",length = 200)
    private String guaranteekindcode;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;
    @Column(name = "DECLARE",length = 1000)
    private String declare;

    public String getGuaranteeId() {
        return guaranteeId;
    }

    public void setGuaranteeId(String guaranteeId) {
        this.guaranteeId = guaranteeId == null ? null : guaranteeId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getGuaranteetype() {
        return guaranteetype;
    }

    public void setGuaranteetype(String guaranteetype) {
        this.guaranteetype = guaranteetype == null ? null : guaranteetype.trim();
    }

    public String getContractcode() {
        return contractcode;
    }

    public void setContractcode(String contractcode) {
        this.contractcode = contractcode == null ? null : contractcode.trim();
    }

    public String getGuarantor() {
        return guarantor;
    }

    public void setGuarantor(String guarantor) {
        this.guarantor = guarantor == null ? null : guarantor.trim();
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

    public String getGuaranteeamount() {
        return guaranteeamount;
    }

    public void setGuaranteeamount(String guaranteeamount) {
        this.guaranteeamount = guaranteeamount == null ? null : guaranteeamount.trim();
    }

    public String getGuaranteekindcode() {
        return guaranteekindcode;
    }

    public void setGuaranteekindcode(String guaranteekindcode) {
        this.guaranteekindcode = guaranteekindcode == null ? null : guaranteekindcode.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getDeclare() {
        return declare;
    }

    public void setDeclare(String declare) {
        this.declare = declare == null ? null : declare.trim();
    }
}