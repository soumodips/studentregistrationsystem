package com.bean;

import java.io.Serializable;

public class CouncilorBean implements Serializable {
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int councilorid;
	
	private String councilorname;
	
	private String counciloraddress;
	
	private String councilornumber;
	
	private String counciloremail;
	
	private String councilorpass;
	
	public int getCouncilorid() {
		
		return councilorid;
	
	}
	
	public void setCouncilorid(int councilorid) {
		
		this.councilorid = councilorid;
	
	}
	
	public String getCouncilorname() {
	
		return councilorname;
	
	}
	
	public void setCouncilorname(String councilorname) {
	
		this.councilorname = councilorname;
	
	}
	
	
	public String getCounciloraddress() {
	
		return counciloraddress;
	
	}
	
	
	public void setCounciloraddress(String counciloraddress) {
		
		this.counciloraddress = counciloraddress;
	}
	
	
	public String getCouncilornumber() {
		
		return councilornumber;
	}
	
	public void setCouncilornumber(String councilornumber) {
	
		this.councilornumber = councilornumber;
	
	}
	
	
	public String getCounciloremail() {
	
		return counciloremail;
	
	}
	
	
	public void setCounciloremail(String counciloremail) {
	
		this.counciloremail = counciloremail;
	
	}
	
	
	public String getCouncilorpass() {
	
		return councilorpass;
	
	}
	
	
	public void setCouncilorpass(String councilorpass) {
		
		this.councilorpass = councilorpass;
	
	}
	
	
	public CouncilorBean(String councilorname, String counciloraddress,
			
			String councilornumber, String counciloremail, String councilorpass) {
		
		super();
		
		this.councilorname = councilorname;
		
		this.counciloraddress = counciloraddress;
		
		this.councilornumber = councilornumber;
		
		this.counciloremail = counciloremail;
		
		this.councilorpass = councilorpass;
	
	}
	
	
	public CouncilorBean(int councilorid, String councilorname,
			
			String counciloraddress, String councilornumber,
			
			String counciloremail, String councilorpass) {
		
		super();
		
		this.councilorid = councilorid;
		
		this.councilorname = councilorname;
		
		this.counciloraddress = counciloraddress;
		
		this.councilornumber = councilornumber;
		
		this.counciloremail = counciloremail;
		
		this.councilorpass = councilorpass;
	
	}
	
	
	public CouncilorBean() {
	
		super();
		// TODO Auto-generated constructor stub
	}
	

}
