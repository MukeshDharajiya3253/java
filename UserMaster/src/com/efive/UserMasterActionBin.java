package com.efive;

import java.util.List;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.hibernate.Session;

import com.hibernate.HibernateSessionFactory;
import com.hibernate.Usermaster;
import com.opensymphony.xwork2.ActionSupport;

public class UserMasterActionBin extends DAO  {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public Long userid;
	public String username;
	public String usertype;
	public String userloginname;
	public String userpassword;
	public String useremail;
	public Long usercontact;
	public String userphoto;
	public Integer stateid;
	public String useraddress;
	public Integer cityid;
	public String active;
	public List<?> statelist;
	public List<?> citylist;
	public List<?> usermasterlist;
	
	
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
	public Long getUsercontact() {
		return usercontact;
	}
	public void setUsercontact(Long usercontact) {
		this.usercontact = usercontact;
	}
	public String getUseraddress() {
		return useraddress;
	}
	public void setUseraddress(String useraddress) {
		this.useraddress = useraddress;
	}
	public Integer getCityid() {
		return cityid;
	}
	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getUserphoto() {
		return userphoto;
	}
	public void setUserphoto(String userphoto) {
		this.userphoto = userphoto;
	}
	public Integer getStateid() {
		return stateid;
	}
	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}
	public List<?> getStatelist() {
		return statelist;
	}
	public void setStatelist(List<?> statelist) {
		this.statelist = statelist;
	}
	public List<?> getCitylist() {
		return citylist;
	}
	public void setCitylist(List<?> citylist) {
		this.citylist = citylist;
	}
	public List<?> getUsermasterlist() {
		return usermasterlist;
	}
	public void setUsermasterlist(List<?> usermasterlist) {
		this.usermasterlist = usermasterlist;
	}

	
	
	
	
	
	
	
}
