package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;


@Entity
@Table(name = "EC_NR_SubjectStatement")
public class EcNrSubjectstatement {
	@Id
    @Column(name = "SubjectStatement_id",length = 40,nullable = false)
    private String subjectstatementId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "Content",length = 200)
    private String content;
	@Column(name = "Declarationdate",length = 10)
    private String declarationdate;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getSubjectstatementId() {
        return subjectstatementId;
    }

    public void setSubjectstatementId(String subjectstatementId) {
        this.subjectstatementId = subjectstatementId == null ? null : subjectstatementId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    public String getDeclarationdate() {
        return declarationdate;
    }

    public void setDeclarationdate(String declarationdate) {
        this.declarationdate = declarationdate == null ? null : declarationdate.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}