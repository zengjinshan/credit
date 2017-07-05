package com.tansun.easycare.modules.sys.entity.qo;

import com.tansun.easycare.modules.sys.entity.Office;

public class UserQueryVo {

	private Office company; // 归属公司
	private String companyId; // 归属公司
	private String loginName;// 登录名
	private String name; // 姓名

	public UserQueryVo() {
		if(company != null){
			companyId = company.getId();
		}
	}

	public String getCompanyId() {
		if(company != null){
			companyId = company.getId();
		}
		return companyId;
	}

	public void setCompanyId(String companyId) {
		this.companyId = companyId;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Office getCompany() {
		return company;
	}

	public void setCompany(Office company) {
		this.company = company;
	}

}
