package com.tansun.easycare.modules.credit.domain;

import com.tansun.easycare.core.persistence.DataEntity;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**征信查询日志
 * Created by admin on 2017/6/15.
 */
@Entity
@Table(name = "T_RH_SEARCH_LOG")
public class RhSearchLog extends DataEntity<RhSearchLog> implements Serializable {

    @Id
    @Column(name = "ID",length = 32,nullable = false)
    private String id;

    @Column(name = "CREATE_USER",length = 32)
    private String createUser;

    @Column(name = "CREATE_USER_NAME",length = 50)
    private String createUserName;

    @Column(name = "CREATE_DATE")
    private Date createDate;

    @Column(name = "SEARCHER_LOGIN_IP",length = 20)
    private String searcherLoginIp;

    @Column(name = "SEARCHER_LOGIN_RH_USER_ID",length = 30)
    private String searcherLoginRhUserId;

    @Column(name = "SEARCHER_LOGIN_RH_PASSWORD",length = 50)
    private String searcherLoginRhPassword;

    @Column(name = "PE_FLAG",length = 1)
    private String peFlag;

    @Column(name = "SEARCHER",length = 50)
    private String searcher;//查询主体


    @Column(name = "SEARCHER_NO",length = 50)
    private String searcherNo;//查询主体号码


    @Column(name ="SEARCH_TYPE",length = 40)
    private String searchType;//查询号码类型


    @Column(name = "QUERY_SERI",length = 32)
    private String querySeri;//查询流水

    @Column(name = "QUERY_SUCCESS")
    private String querySuccess;//0失败1成功

    @Transient
    private String beginDate;

    @Transient
    private String endDate;

    public String getSearcher() {
        return searcher;
    }

    public void setSearcher(String searcher) {
        this.searcher = searcher;
    }

    public String getSearcherNo() {
        return searcherNo;
    }

    public void setSearcherNo(String searcherNo) {
        this.searcherNo = searcherNo;
    }

    public String getEndDate() {
        return endDate;
    }

    public void setEndDate(String endDate) {
        this.endDate = endDate;
    }

    public String getBeginDate() {
        return beginDate;
    }

    public void setBeginDate(String beginDate) {
        this.beginDate = beginDate;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getCreateUser() {
        return createUser;
    }

    public void setCreateUser(String createUser) {
        this.createUser = createUser;
    }

    public String getCreateUserName() {
        return createUserName;
    }

    public void setCreateUserName(String createUserName) {
        this.createUserName = createUserName;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

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

    public String getPeFlag() {
        return peFlag;
    }

    public void setPeFlag(String peFlag) {
        this.peFlag = peFlag;
    }

    public String getQuerySeri() {
        return querySeri;
    }

    public void setQuerySeri(String querySeri) {
        this.querySeri = querySeri;
    }

    public String getQuerySuccess() {
        return querySuccess;
    }

    public void setQuerySuccess(String querySuccess) {
        this.querySuccess = querySuccess;
    }

    public String getSearchType() {
        return searchType;
    }

    public void setSearchType(String searchType) {
        this.searchType = searchType;
    }
}
