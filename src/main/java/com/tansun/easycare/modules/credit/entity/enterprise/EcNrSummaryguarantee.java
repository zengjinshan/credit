package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SummaryGuarantee")
public class EcNrSummaryguarantee {
	
	@Id
    @Column(name = "SummaryGuarantee_id",length = 40,nullable = false)
    private String summaryguaranteeId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Guaranteetype",length = 200)
    private String guaranteetype;
	@Column(name = "amount",length = 8)
    private String amount;
	@Column(name = "Guaranteeamount",length = 20)
    private String guaranteeamount;
	@Column(name = "Guaranteed_normal",length = 20)
    private String guaranteedNormal;
	@Column(name = "Guaranteed_concerned",length = 20)
    private String guaranteedConcerned;
	@Column(name = "Guaranteed_bad",length = 20)
    private String guaranteedBad;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;
    @Column(name = "total",length = 2000)
    private String total;
    
    @Column(name = "type",length = 200)
    private String type;
    
    
    public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getSummaryguaranteeId() {
        return summaryguaranteeId;
    }

    public void setSummaryguaranteeId(String summaryguaranteeId) {
        this.summaryguaranteeId = summaryguaranteeId == null ? null : summaryguaranteeId.trim();
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

    public String getAmount() {
        return amount;
    }

    public void setAmount(String amount) {
        this.amount = amount == null ? null : amount.trim();
    }

    public String getGuaranteeamount() {
        return guaranteeamount;
    }

    public void setGuaranteeamount(String guaranteeamount) {
        this.guaranteeamount = guaranteeamount == null ? null : guaranteeamount.trim();
    }

    public String getGuaranteedNormal() {
        return guaranteedNormal;
    }

    public void setGuaranteedNormal(String guaranteedNormal) {
        this.guaranteedNormal = guaranteedNormal == null ? null : guaranteedNormal.trim();
    }

    public String getGuaranteedConcerned() {
        return guaranteedConcerned;
    }

    public void setGuaranteedConcerned(String guaranteedConcerned) {
        this.guaranteedConcerned = guaranteedConcerned == null ? null : guaranteedConcerned.trim();
    }

    public String getGuaranteedBad() {
        return guaranteedBad;
    }

    public void setGuaranteedBad(String guaranteedBad) {
        this.guaranteedBad = guaranteedBad == null ? null : guaranteedBad.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
    }
}