package com.common;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

public class StatemasterBin extends ActionSupport {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public int pageno;
	public int current;
	public int totalrecord;
	public int end,start;
	public int getCalpage() {
		return calpage;
	}
	public void setCalpage(int calpage) {
		this.calpage = calpage;
	}
	public int calpage;
	public int getPageno() {
		return pageno;
	}
	public void setPageno(int pageno) {
		this.pageno = pageno;
	}
	public Long stateid;
	public String statename;
	public String active;
	public List<?> DispList;
	public List<?> DispList1;
	public String cityid;

	public String getCityid() {
		return cityid;
	}
	public void setCityid(String cityid) {
		this.cityid = cityid;
	}
	public List<?> getDispList1() {
		return DispList1;
	}
	public void setDispList1(List<?> dispList1) {
		DispList1 = dispList1;
	}
	public String cityname;
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	public String limit;
	public String getLimit() {
		return limit;
	}
	public void setLimit(String limit) {
		this.limit = limit;
	}
	public List<?> getDispList() {
		return DispList;
	}
	public void setDispList(List<?> dispList) {
		DispList = dispList;
	}
	public Long getStateid() {
		return stateid;
	}
	public void setStateid(Long stateid) {
		this.stateid = stateid;
	}
	public String getStatename() {
		return statename;
	}
	public void setStatename(String statename) {
		this.statename = statename;
	}
	public String getActive() {
		return active;
	}
	public void setActive(String active) {
		this.active = active;
	}
	public int getCurrent() {
		return current;
	}
	public void setCurrent(int current) {
		this.current = current;
	}
	public int getEnd() {
		return end;
	}
	public void setEnd(int end) {
		this.end = end;
	}
	public int getStart() {
		return start;
	}
	public void setStart(int start) {
		this.start = start;
	}
	public int getTotalrecord() {
		return totalrecord;
	}
	public void setTotalrecord(int totalrecord) {
		this.totalrecord = totalrecord;
	}
	

}
