package com.tansun.easycare.modules.credit.domain;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by admin on 2017/6/12.
 */
@Entity
@Table(name = "T_RH_USER")
public class RhUser implements Serializable {

    @Id
    @Column(name = "ID",length = 32,nullable = false)
    private String id;

    @Column(name = "CERTIFICATION_MARK",length = 200)
    private String certificationMark;

    @Column(name = "ORG_CODE",length = 20)
    private String orgCode;

    @Column(name = "ORG_NAME",length = 100)
    private String orgName;

    @Column(name = "PASSWORD",length = 100)
    private String password;

    @Column(name = "STAND_IND",length = 1)
    private String standInd="1";

    @Column(name = "UPDATE_DATE")
    private Date updateDate;

    @Column(name = "USER_ID",length = 64)
    private String userId;

    @Column(name = "OUT_ORG_CODE",length = 20)
    private String outOrgCode;

    @Column(name = "TYPE",length = 1)
    private String type;//1:个人2：企业

    public String getOrgName() {
        return orgName;
    }

    public void setOrgName(String orgName) {
        this.orgName = orgName;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCertificationMark() {
        return certificationMark;
    }

    public void setCertificationMark(String certificationMark) {
        this.certificationMark = certificationMark;
    }

    public String getOrgCode() {
        return orgCode;
    }

    public void setOrgCode(String orgCode) {
        this.orgCode = orgCode;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStandInd() {
        return standInd;
    }

    public void setStandInd(String standInd) {
        this.standInd = standInd;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getUserId() {
        return userId;
    }

    public void setUserId(String userId) {
        this.userId = userId;
    }

    public String getOutOrgCode() {
        return outOrgCode;
    }

    public void setOutOrgCode(String outOrgCode) {
        this.outOrgCode = outOrgCode;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
