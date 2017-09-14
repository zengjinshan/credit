package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_SummarySettled02")
public class EcNrSummarysettled02 {
	@Id
    @Column(name = "SummarySettled02_id",length = 40,nullable = false)
    private String summarysettled02Id;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "type",length = 64)
    private String type;
	@Column(name = "Loan",length = 8)
    private String loan;
	@Column(name = "LoanSame",length = 8)
    private String loansame;
	@Column(name = "Finan",length = 8)
    private String finan;
	@Column(name = "Assuree",length = 8)
    private String assuree;
	@Column(name = "Bill",length = 8)
    private String bill;
	@Column(name = "Postal",length = 8)
    private String postal;
	@Column(name = "Letter",length = 8)
    private String letter;
	@Column(name = "Guarante",length = 8)
    private String guarante;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSummarysettled02Id() {
        return summarysettled02Id;
    }

    public void setSummarysettled02Id(String summarysettled02Id) {
        this.summarysettled02Id = summarysettled02Id == null ? null : summarysettled02Id.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getLoan() {
        return loan;
    }

    public void setLoan(String loan) {
        this.loan = loan == null ? null : loan.trim();
    }

    public String getLoansame() {
        return loansame;
    }

    public void setLoansame(String loansame) {
        this.loansame = loansame == null ? null : loansame.trim();
    }

    public String getFinan() {
        return finan;
    }

    public void setFinan(String finan) {
        this.finan = finan == null ? null : finan.trim();
    }

    public String getAssuree() {
        return assuree;
    }

    public void setAssuree(String assuree) {
        this.assuree = assuree == null ? null : assuree.trim();
    }

    public String getBill() {
        return bill;
    }

    public void setBill(String bill) {
        this.bill = bill == null ? null : bill.trim();
    }

    public String getPostal() {
        return postal;
    }

    public void setPostal(String postal) {
        this.postal = postal == null ? null : postal.trim();
    }

    public String getLetter() {
        return letter;
    }

    public void setLetter(String letter) {
        this.letter = letter == null ? null : letter.trim();
    }

    public String getGuarante() {
        return guarante;
    }

    public void setGuarante(String guarante) {
        this.guarante = guarante == null ? null : guarante.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}