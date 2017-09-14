package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_Paid_AssetDisposal")
public class EcNrPaidAssetdisposal {
	
	@Id
    @Column(name = "Paid_AssetDisposal_id",length = 40,nullable = false)
    private String paidAssetdisposalId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Assetmanagercode",length = 14)
    private String assetmanagercode;
	@Column(name = "Currency",length = 200)
    private String currency;
	@Column(name = "Inceptsum",length = 20)
    private String inceptsum;
	@Column(name = "Inceptdate",length = 10)
    private String inceptdate;
	@Column(name = "Terminatedate",length = 10)
    private String terminatedate;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getPaidAssetdisposalId() {
        return paidAssetdisposalId;
    }

    public void setPaidAssetdisposalId(String paidAssetdisposalId) {
        this.paidAssetdisposalId = paidAssetdisposalId == null ? null : paidAssetdisposalId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getAssetmanagercode() {
        return assetmanagercode;
    }

    public void setAssetmanagercode(String assetmanagercode) {
        this.assetmanagercode = assetmanagercode == null ? null : assetmanagercode.trim();
    }

    public String getCurrency() {
        return currency;
    }

    public void setCurrency(String currency) {
        this.currency = currency == null ? null : currency.trim();
    }

    public String getInceptsum() {
        return inceptsum;
    }

    public void setInceptsum(String inceptsum) {
        this.inceptsum = inceptsum == null ? null : inceptsum.trim();
    }

    public String getInceptdate() {
        return inceptdate;
    }

    public void setInceptdate(String inceptdate) {
        this.inceptdate = inceptdate == null ? null : inceptdate.trim();
    }

    public String getTerminatedate() {
        return terminatedate;
    }

    public void setTerminatedate(String terminatedate) {
        this.terminatedate = terminatedate == null ? null : terminatedate.trim();
    }

    public String getDeclare() {
        return declare;
    }

    public void setDeclare(String declare) {
        this.declare = declare == null ? null : declare.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}