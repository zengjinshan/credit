package com.tansun.easycare.modules.credit.domain.person;

import com.tansun.easycare.core.persistence.DataEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Created by admin on 2017/6/7.
 */
@Entity
@Table(name = "T_CREDIT_PERSON_DATA_CAPTURE")
public class PersonDataCapture extends DataEntity<PersonDataCapture> implements Serializable{

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

    @Column(name = "SEARCHED_USER_NAME",length = 50)
    private String searchedUserName;//被查询用户姓名

    @Column(name = "SEARCHED_CER_TYPE",length = 2)
    private String searchedCerType;//被查询用户证件类型

    @Column(name = "SEARCHED_CER_NO",length = 100)
    private String searchedCerNo;//被查询用户证件号码

    @Column(name = "QUERY_TYPE",length = 2)
    private String queryType;

    @Column(name = "QUERY_REASON",length = 2)
    private String queryReason;

    @Column(name = "SEARCHER_LOGIN_IP",length = 20)
    private String searcherLoginIp;

    @Column(name = "SEARCHER_LOGIN_RH_USER_ID",length = 30)
    private String searcherLoginRhUserId;


    @Column(name = "SEARCHER_LOGIN_RH_PASSWORD",length = 50)
    private String searcherLoginRhPassword;

    @Column(name = "SEARCHER_NAME",length = 50)
    private String searcherName;

    @Column(name = "QUERY_SUCCESS")
    private String querySuccess;//0失败1成功

    public String getSearcherLoginIp() {
        return searcherLoginIp;
    }

    public void setSearcherLoginIp(String searcherLoginIp) {
        this.searcherLoginIp = searcherLoginIp;
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

    public String getSearcherName() {
        return searcherName;
    }

    public void setSearcherName(String searcherName) {
        this.searcherName = searcherName;
    }

    public String getQuerySuccess() {
        return querySuccess;
    }

    public void setQuerySuccess(String querySuccess) {
        this.querySuccess = querySuccess;
    }

    public String getSearchedUserName() {
        return searchedUserName;
    }

    public void setSearchedUserName(String searchedUserName) {
        this.searchedUserName = searchedUserName;
    }

    public String getSearchedCerType() {
        return searchedCerType;
    }

    public void setSearchedCerType(String searchedCerType) {
        this.searchedCerType = searchedCerType;
    }

    public String getSearchedCerNo() {
        return searchedCerNo;
    }

    public void setSearchedCerNo(String searchedCerNo) {
        this.searchedCerNo = searchedCerNo;
    }

    public String getQueryType() {
        return queryType;
    }

    public void setQueryType(String queryType) {
        this.queryType = queryType;
    }

    public String getQueryReason() {
        return queryReason;
    }

    public void setQueryReason(String queryReason) {
        this.queryReason = queryReason;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCaptureData() {
        return captureData;
    }

    public void setCaptureData(String captureData) {
        this.captureData = captureData;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Date getUpdateDate() {
        return updateDate;
    }

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
}
