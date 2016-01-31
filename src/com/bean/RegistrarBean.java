package com.bean;

import java.io.Serializable;

public class RegistrarBean implements Serializable{
	
	private static final long serialVersionUID = 1L;
	
	private String registrarname;
	
	private String registrarusername;
	
	private String registrarpassword;
	
	private String registrarnumber;
	
	public String getRegistrarname() {
	
		return registrarname;
	
	}
	
	
	public void setRegistrarname(String registrarname) {
	
		this.registrarname = registrarname;
	
	}
	
	
	public String getRegistrarusername() {
	
		return registrarusername;
	
	}
	
	
	public void setRegistrarusername(String registrarusername) {
	
		this.registrarusername = registrarusername;
	}
	
	
	public String getRegistrarpassword() {
	
		return registrarpassword;
	
	}
	public void setRegistrarpassword(String registrarpassword) {
	
		this.registrarpassword = registrarpassword;
	
	}
	
	
	public String getRegistrarnumber() {
	
		return registrarnumber;
	
	}
	
	public void setRegistrarnumber(String registrarnumber) {
	
		this.registrarnumber = registrarnumber;
	
	}
	
	
	public RegistrarBean(String registrarname, String registrarusername,
			String registrarpassword, String registrarnumber) {
		
		super();
		
		this.registrarname = registrarname;
		
		this.registrarusername = registrarusername;
		
		this.registrarpassword = registrarpassword;
		
		this.registrarnumber = registrarnumber;
	
	}
	
	
	public RegistrarBean() {
	
		super();
		
		// TODO Auto-generated constructor stub
	}
	

}
