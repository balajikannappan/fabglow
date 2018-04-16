package com.niit.backend.model;

import java.util.Date;

public class LoginInfo {
	private int loginId;
	private String userEmailId;
	private Date loggedOnDate;
	private Date loggedOffDate;
	
	public int getLoginId() {
		return loginId;
	}
	public void setLoginId(int loginId) {
		this.loginId = loginId;
	}
	public String getUserEmailId() {
		return userEmailId;
	}
	public void setUserEmailId(String userEmailId) {
		this.userEmailId = userEmailId;
	}
	public Date getLoggedOnDate() {
		return loggedOnDate;
	}
	public void setLoggedOnDate(Date loggedOnDate) {
		this.loggedOnDate = loggedOnDate;
	}
	public Date getLoggedOffDate() {
		return loggedOffDate;
	}
	public void setLoggedOffDate(Date loggedOffDate) {
		this.loggedOffDate = loggedOffDate;
	}
	
	
}
