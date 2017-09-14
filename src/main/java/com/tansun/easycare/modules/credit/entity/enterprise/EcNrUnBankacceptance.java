package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_UN_BankAcceptance")
public class EcNrUnBankacceptance {
	
	@Id
    @Column(name = "UN_BankAcceptance_id",length = 40,nullable = false)
    private String unBankacceptanceId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "cnt",length = 60)
    private String cnt;
	@Column(name = "bal_lt_30",length = 10)
    private String balLt30;
	@Column(name = "bal_lt_60",length = 10)
    private String balLt60;
	@Column(name = "bal_lt_90",length = 10)
    private String balLt90;
	@Column(name = "bal_gt_90",length = 10)
    private String balGt90;
	@Column(name = "total",length = 1000)
    private String total;
	@Column(name = "declares",length = 600)
    private String declares;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUnBankacceptanceId() {
        return unBankacceptanceId;
    }

    public void setUnBankacceptanceId(String unBankacceptanceId) {
        this.unBankacceptanceId = unBankacceptanceId == null ? null : unBankacceptanceId.trim();
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

    public String getBalLt30() {
        return balLt30;
    }

    public void setBalLt30(String balLt30) {
        this.balLt30 = balLt30 == null ? null : balLt30.trim();
    }

    public String getBalLt60() {
        return balLt60;
    }

    public void setBalLt60(String balLt60) {
        this.balLt60 = balLt60 == null ? null : balLt60.trim();
    }

    public String getBalLt90() {
        return balLt90;
    }

    public void setBalLt90(String balLt90) {
        this.balLt90 = balLt90 == null ? null : balLt90.trim();
    }

    public String getBalGt90() {
        return balGt90;
    }

    public void setBalGt90(String balGt90) {
        this.balGt90 = balGt90 == null ? null : balGt90.trim();
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
    }

    public String getDeclares() {
        return declares;
    }

    public void setDeclares(String declares) {
        this.declares = declares == null ? null : declares.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}