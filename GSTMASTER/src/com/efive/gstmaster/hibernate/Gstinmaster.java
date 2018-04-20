package com.efive.gstmaster.hibernate;

/**
 * Gstinmaster entity. @author MyEclipse Persistence Tools
 */

public class Gstinmaster implements java.io.Serializable {

	// Fields

	private Long gstinid;
	private String gstinno;
	private String gstinname;
	private String address;
	private Integer statecode;
	private String pannumber;
	private String digit3;
	private Long pincode;
	private String address1;
	private String address2;
	private String address3;
	private Integer contryid;
	private Integer cityid;
	private Integer stateid;
	private String active;

	// Constructors

	/** default constructor */
	public Gstinmaster() {
	}

	/** full constructor */
	public Gstinmaster(String gstinno, String gstinname, String address,
			Integer statecode, String pannumber, String digit3, Long pincode,
			String address1, String address2, String address3,
			Integer contryid, Integer cityid, Integer stateid, String active) {
		this.gstinno = gstinno;
		this.gstinname = gstinname;
		this.address = address;
		this.statecode = statecode;
		this.pannumber = pannumber;
		this.digit3 = digit3;
		this.pincode = pincode;
		this.address1 = address1;
		this.address2 = address2;
		this.address3 = address3;
		this.contryid = contryid;
		this.cityid = cityid;
		this.stateid = stateid;
		this.active = active;
	}

	// Property accessors

	public Long getGstinid() {
		return this.gstinid;
	}

	public void setGstinid(Long gstinid) {
		this.gstinid = gstinid;
	}

	public String getGstinno() {
		return this.gstinno;
	}

	public void setGstinno(String gstinno) {
		this.gstinno = gstinno;
	}

	public String getGstinname() {
		return this.gstinname;
	}

	public void setGstinname(String gstinname) {
		this.gstinname = gstinname;
	}

	public String getAddress() {
		return this.address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public Integer getStatecode() {
		return this.statecode;
	}

	public void setStatecode(Integer statecode) {
		this.statecode = statecode;
	}

	public String getPannumber() {
		return this.pannumber;
	}

	public void setPannumber(String pannumber) {
		this.pannumber = pannumber;
	}

	public String getDigit3() {
		return this.digit3;
	}

	public void setDigit3(String digit3) {
		this.digit3 = digit3;
	}

	public Long getPincode() {
		return this.pincode;
	}

	public void setPincode(Long pincode) {
		this.pincode = pincode;
	}

	public String getAddress1() {
		return this.address1;
	}

	public void setAddress1(String address1) {
		this.address1 = address1;
	}

	public String getAddress2() {
		return this.address2;
	}

	public void setAddress2(String address2) {
		this.address2 = address2;
	}

	public String getAddress3() {
		return this.address3;
	}

	public void setAddress3(String address3) {
		this.address3 = address3;
	}

	public Integer getContryid() {
		return this.contryid;
	}

	public void setContryid(Integer contryid) {
		this.contryid = contryid;
	}

	public Integer getCityid() {
		return this.cityid;
	}

	public void setCityid(Integer cityid) {
		this.cityid = cityid;
	}

	public Integer getStateid() {
		return this.stateid;
	}

	public void setStateid(Integer stateid) {
		this.stateid = stateid;
	}

	public String getActive() {
		return this.active;
	}

	public void setActive(String active) {
		this.active = active;
	}

}