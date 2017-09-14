package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_UN_BillDiscount")
public class EcNrUnBilldiscount {
	
	@Id
    @Column(name = "UN_BillDiscount_id",length = 40,nullable = false)
    private String unBilldiscountId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "cnt",length = 20)
    private String cnt;
	@Column(name = "Discountsum",length = 20)
    private String discountsum;
	@Column(name = "declare",length = 600)
    private String declare;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUnBilldiscountId() {
        return unBilldiscountId;
    }

    public void setUnBilldiscountId(String unBilldiscountId) {
        this.unBilldiscountId = unBilldiscountId == null ? null : unBilldiscountId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getFinancecode() {
        return financecode;
    }

    public void setFinancecode(String financecode) {
        this.financecode = financecode == null ? null : financecode.trim();
    }

    public String getCnt() {
        return cnt;
    }

    public void setCnt(String cnt) {
        this.cnt = cnt == null ? null : cnt.trim();
    }

    public String getDiscountsum() {
        return discountsum;
    }

    public void setDiscountsum(String discountsum) {
        this.discountsum = discountsum == null ? null : discountsum.trim();
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