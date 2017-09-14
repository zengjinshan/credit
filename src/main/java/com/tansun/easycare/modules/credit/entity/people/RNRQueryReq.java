package com.tansun.easycare.modules.credit.entity.people;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "r_nr_queryreq")
public class RNRQueryReq {
	
	@Id
	@Column(name="QUERYREQ_ID",length=40,nullable=false)
	private String queryreqId;
	@Column(name="REPORT_ID",length=40)
    private String reportId;
	@Column(name="PRODUCTTYPE",length=50)
    private String producttype;
	@Column(name="FORMAT",length=50)
    private String format;
	@Column(name="FORMATVERSION",length=50)
    private String formatversion;
	@Column(name="NAME",length=64)
    private String name;
	@Column(name="CERTTYPE",length=40)
    private String certtype;
	@Column(name="CERTNO",length=30)
    private String certno;
	@Column(name="QUERYRESULTCUE",length=60)
    private String queryresultcue;
	@Column(name="TIME_STAMP")
    private Date timeStamp;
	@Column(name="QUERY_OPERATOR",length=60)
    private String queryOperator;
	@Column(name="QUERY_REASON",length=60)
    private String queryReason;
    
    
    public String getQueryreqId() {
		return queryreqId;
	}

	public void setQueryreqId(String queryreqId) {
		this.queryreqId = queryreqId;
	}

	public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getProducttype() {
        return producttype;
    }

    public void setProducttype(String producttype) {
        this.producttype = producttype == null ? null : producttype.trim();
    }

    public String getFormat() {
        return format;
    }

    public void setFormat(String format) {
        this.format = format == null ? null : format.trim();
    }

    public String getFormatversion() {
        return formatversion;
    }

    public void setFormatversion(String formatversion) {
        this.formatversion = formatversion == null ? null : formatversion.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
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

    public String getQueryresultcue() {
        return queryresultcue;
    }

    public void setQueryresultcue(String queryresultcue) {
        this.queryresultcue = queryresultcue == null ? null : queryresultcue.trim();
    }

    public Date getTimeStamp() {
        return timeStamp;
    }

    public void setTimeStamp(Date timeStamp) {
        this.timeStamp = timeStamp;
    }

    public String getQueryOperator() {
        return queryOperator;
    }

    public void setQueryOperator(String queryOperator) {
        this.queryOperator = queryOperator == null ? null : queryOperator.trim();
    }

    public String getQueryReason() {
        return queryReason;
    }

    public void setQueryReason(String queryReason) {
        this.queryReason = queryReason == null ? null : queryReason.trim();
    }
}