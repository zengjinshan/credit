package com.tansun.easycare.modules.credit.domain;

import com.tansun.easycare.core.persistence.DataEntity;
import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Author：jennie
 * Date：2017/6/26
 * Time: 15:09
 */
@Entity
@Table(name = "T_CREDIT_E_DATA_CAPTURE")
public class EnterpriseDataCapture extends DataEntity<EnterpriseDataCapture> implements Serializable {

    @Id
    @Column(name = "ID",length = 32,nullable = false)
    private String id;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "CAPTURE_DATA",columnDefinition = "CLOB")
    private String captureData;

    @Column(name = "CREATE_DATE",length = 24)
    private Date createDate;

    @Column(name = "UPDATE_DATE",length = 24)
    private Date updateDate;

    @Column(name = "CREATE_USER",length = 50)
    private String createUser;

    @Column(name = "UPDATE_USER",length = 50)
    private String updateUser;

    @Column(name = "CREDIT_CODE",length = 50)
    private String creditCode;//信用机构代码

    @Column(name = "LOAN_CARD_NO",length = 50)
    private String loanCardNo;//中征码

    @Column(name = "CORP_NO",length = 50)
    private String corpNo;//组织机构代码

    @Column(name = "REGI_TYPE_CODE",length = 1)
    private String regiTypeCode;//登记注册类型

    @Column(name = "FRG_CORP_NO",length = 30)
    private String frgCorpNo;//登记注册号

    @Column(name = "GS_REGI_NO",length = 30)
    private String gsRegiNo;//纳税人识别号（国税）

    @Column(name = "DS_REGI_NO",length = 30)
    private String dsRegiNo;//纳税人识别号（地税）


    @Column(name = "SEARCHER_ORG_CODE",length = 30)
    private String searcherOrgCode;//查询者机构代码

    @Column(name = "SEARCHER_LOGIN_RH_USER_ID",length = 30)
    private String searcherLoginRhUserId;


    @Column(name = "SEARCHER_LOGIN_RH_PASSWORD",length = 50)
    private String searcherLoginRhPassword;

    @Column(name = "SEARCH_TYPE",length = 2)
    private String searchType;//查询版本

    @Column(name = "SEARCH_REASON",length = 2)
    private String searchReason;//查询原因

    @Override
    public String getId() {
        return id;
    }

    @Override
    public void setId(String id) {
        this.id = id;
    }

    public String getCaptureData() {
        return captureData;
    }

    public void setCaptureData(String captureData) {
        this.captureData = captureData;
    }

    @Override
    public Date getCreateDate() {
        return createDate;
    }

    @Override
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    @Override
    public Date getUpdateDate() {
        return updateDate;
    }

    @Override
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getUpdateUser() {
        return updateUser;
    }

    public void setUpdateUser(String updateUser) {
        this.updateUser = updateUser;
    }

    public String getCreditCode() {
        return creditCode;
    }

    public void setCreditCode(String creditCode) {
        this.creditCode = creditCode;
    }

    public String getLoanCardNo() {
        return loanCardNo;
    }

    public void setLoanCardNo(String loanCardNo) {
        this.loanCardNo = loanCardNo;
    }

    public String getCorpNo() {
        return corpNo;
    }

    public void setCorpNo(String corpNo) {
        this.corpNo = corpNo;
    }

    public String getRegiTypeCode() {
        return regiTypeCode;
    }

    public void setRegiTypeCode(String regiTypeCode) {
        this.regiTypeCode = regiTypeCode;
    }

    public String getFrgCorpNo() {
        return frgCorpNo;
    }

    public void setFrgCorpNo(String frgCorpNo) {
        this.frgCorpNo = frgCorpNo;
    }

    public String getGsRegiNo() {
        return gsRegiNo;
    }

    public void setGsRegiNo(String gsRegiNo) {
        this.gsRegiNo = gsRegiNo;
    }

    public String getDsRegiNo() {
        return dsRegiNo;
    }

    public void setDsRegiNo(String dsRegiNo) {
        this.dsRegiNo = dsRegiNo;
    }

    public String getSearcherOrgCode() {
        return searcherOrgCode;
    }

    public void setSearcherOrgCode(String searcherOrgCode) {
        this.searcherOrgCode = searcherOrgCode;
    }

    public String getSearcherLoginRhUserId() {
        return searcherLoginRhUserId;
    }

    public void setSearcherLoginRhUserId(String searcherLoginRhUserId) {
        this.searcherLoginRhUserId = searcherLoginRhUserId;
    }

    public String getSearcherLoginRhPassword() {
        return searcherLoginRhPassword;
    }

    public void setSearcherLoginRhPassword(String searcherLoginRhPassword) {
        this.searcherLoginRhPassword = searcherLoginRhPassword;
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }

    public String getSearchReason() {
        return searchReason;
    }

    public void setSearchReason(String searchReason) {
        this.searchReason = searchReason;
    }
}
