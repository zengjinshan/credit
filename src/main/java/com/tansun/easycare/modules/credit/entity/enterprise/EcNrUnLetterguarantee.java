package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_UN_LetterGuarantee")
public class EcNrUnLetterguarantee {
	@Id
    @Column(name = "UN_LetterGuarantee_id",length = 40,nullable = false)
    private String unLetterguaranteeId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Financecode",length = 14)
    private String financecode;
	@Column(name = "Contractcode",length = 60)
    private String contractcode;
	@Column(name = "cnt",length = 20)
    private String cnt;
	@Column(name = "Lettersum",length = 20)
    private String lettersum;
	@Column(name = "Letterbalance",length = 20)
    private String letterbalance;
	@Column(name = "declares",length = 600)
    private String declares;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getUnLetterguaranteeId() {
        return unLetterguaranteeId;
    }

    public void setUnLetterguaranteeId(String unLetterguaranteeId) {
        this.unLetterguaranteeId = unLetterguaranteeId == null ? null : unLetterguaranteeId.trim();
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

    public String getContractcode() {
        return contractcode;
    }

    public void setContractcode(String contractcode) {
        this.contractcode = contractcode == null ? null : contractcode.trim();
    }

    public String getCnt() {
        return cnt;
    }

    public void setCnt(String cnt) {
        this.cnt = cnt == null ? null : cnt.trim();
    }

    public String getLettersum() {
        return lettersum;
    }

    public void setLettersum(String lettersum) {
        this.lettersum = lettersum == null ? null : lettersum.trim();
    }

    public String getLetterbalance() {
        return letterbalance;
    }

    public void setLetterbalance(String letterbalance) {
        this.letterbalance = letterbalance == null ? null : letterbalance.trim();
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