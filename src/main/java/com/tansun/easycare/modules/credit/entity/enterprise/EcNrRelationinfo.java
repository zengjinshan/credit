package com.tansun.easycare.modules.credit.entity.enterprise;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "EC_NR_RelationInfo")
public class EcNrRelationinfo {
	@Id
    @Column(name = "RelationInfo_id",length = 40,nullable = false)
    private String relationinfoId;
	@Column(name = "report_id",length = 40)
    private String reportId;
	@Column(name = "name",length = 100)
    private String name;
	@Column(name = "loancardcode",length = 16)
    private String loancardcode;
	@Column(name = "relationship",length = 50)
    private String relationship;
	@Column(name = "UPDATE_DATE")
    private Date updateDate;

    public String getRelationinfoId() {
        return relationinfoId;
    }

    public void setRelationinfoId(String relationinfoId) {
        this.relationinfoId = relationinfoId == null ? null : relationinfoId.trim();
    }

    public String getReportId() {
        return reportId;
    }

    public void setReportId(String reportId) {
        this.reportId = reportId == null ? null : reportId.trim();
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    public String getLoancardcode() {
        return loancardcode;
    }

    public void setLoancardcode(String loancardcode) {
        this.loancardcode = loancardcode == null ? null : loancardcode.trim();
    }

    public String getRelationship() {
        return relationship;
    }

    public void setRelationship(String relationship) {
        this.relationship = relationship == null ? null : relationship.trim();
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}