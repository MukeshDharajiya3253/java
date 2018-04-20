package com.efive.gstmaster.master;

import java.util.List;

import com.efive.gstmaster.common.DAO;

public class ORG1GstinActionBin extends DAO {
	
	public Long gstinid;
	public String gstinno;
	public String gstinname;
	public String address;
	public Integer statecode;
	public String pannumber;
	public String digit3;
	public Long pincode;
	public String address1;
	public String address2;
	public String address3;
	public Integer contryid;
	public Integer cityid;
	public Integer stateid;
	public String active;
	public String strQuery;
	public List<?> getDataList;
	public List<?> getCountryList;
	public List<?> getStateList;
	public List<?> getCityList;
	public List<?> getUpdateList;
	public List<?> checkDupList;
	private List<?> ckechDupList;
	public Long getGstinid() {
		return gstinid;
	}
	public void setGstinid(Long gstinid) {
		this.gstinid = gstinid;
	}
	public String getGstinno() {
		return gstinno;
	}
	public void setGstinno(String gstinno) {
		this.gstinno = gstinno;
	}
	public String getGstinname() {
		return gstinname;
	}
	public void setGstinname(String gstinname) {
		this.gstinname = gstinname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public Integer getStatecode() {
		return statecode;
	}
	public void setStatecode(Integer statecode) {
		this.statecode = statecode;
	}
	public String getPannumber() {
		return pannumber;
	}
	public void setPannumber(String pannumber) {
		this.pannumber = pannumber;
	}
	public String getDigit3() {
		return digit3;
	}
	public void setDigit3(String digit3) {
		this.digit3 = digit3;
	}
	public Long getPincode() {
		return pincode;
	}
	public void setPincode(Long pincode) {
		this.pincode = pincode;
	}
	public String getAddress1() {
		return address1;
	}
	public void setAddress1(String address1) {
		this.address1 = address1;
	}
	public String getAddress2() {
		return address2;
	}
	public void setAddress2(String address2) {
		this.address2 = address2;
	}
	public String getAddress3() {
		return address3;
	}
	public void setAddress3(String address3) {
		this.address3 = address3;
	}
	public Integer getContryid() {
		return contryid;
	}
	public void setContryid(Integer contryid) {
		this.contryid = contryid;
	}
	public Integer getCityid() {
		return cityid;
	}
	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}
	public Integer getStateid() {
		return stateid;
	}
	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public String getStrQuery() {
		return strQuery;
	}
	public void setStrQuery(String strQuery) {
		this.strQuery = strQuery;
	}
	public List<?> getGetDataList() {
		return getDataList;
	}
	public void setGetDataList(List<?> getDataList) {
		this.getDataList = getDataList;
	}
	public List<?> getGetCountryList() {
		return getCountryList;
	}
	public void setGetCountryList(List<?> getCountryList) {
		this.getCountryList = getCountryList;
	}
	public List<?> getGetStateList() {
		return getStateList;
	}
	public void setGetStateList(List<?> getStateList) {
		this.getStateList = getStateList;
	}
	public List<?> getGetCityList() {
		return getCityList;
	}
	public void setGetCityList(List<?> getCityList) {
		this.getCityList = getCityList;
	}
	public List<?> getGetUpdateList() {
		return getUpdateList;
	}
	public void setGetUpdateList(List<?> getUpdateList) {
		this.getUpdateList = getUpdateList;
	}
	public List<?> getCkechDupList() {
		return getCkechDupList();
	}
	public void setCkechDupList(List<?> ckechDupList) {
		this.ckechDupList = ckechDupList;
	}
	
	
}
