package com.login;

import java.util.List;

import com.efive.DAO;

public class LoginActionBin extends DAO {

	public Long userid;
	public String username;
	public String usertype;
	public String userloginname;
	public String userpassword;
	public String useremail;
	public String active;
	public List<?>  loginList;
	public List<?>  checkList;
	public Long getUserid() {
		return userid;
	}
	public void setUserid(Long userid) {
		this.userid = userid;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getUsertype() {
		return usertype;
	}
	public void setUsertype(String usertype) {
		this.usertype = usertype;
	}
	public String getUserloginname() {
		return userloginname;
	}
	public void setUserloginname(String userloginname) {
		this.userloginname = userloginname;
	}
	public String getUserpassword() {
		return userpassword;
	}
	public void setUserpassword(String userpassword) {
		this.userpassword = userpassword;
	}
	public String getUseremail() {
		return useremail;
	}
	public void setUseremail(String useremail) {
		this.useremail = useremail;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public List<?> getLoginList() {
		return loginList;
	}
	public void setLoginList(List<?> loginList) {
		this.loginList = loginList;
	}
	public List<?> getCheckList() {
		return checkList;
	}
	public void setCheckList(List<?> checkList) {
		this.checkList = checkList;
	}

}
