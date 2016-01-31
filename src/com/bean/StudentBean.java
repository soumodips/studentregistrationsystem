package com.bean;

public class StudentBean {

	private int studentid;
	
	private String studentname; 
	
	private String studentgender; 
	
	private String studentdob;
	
	private String studentaddress; 
	
	private String studentnumber; 
	
	private String studentemail;
	
	private String studentcourse;
	
	public int getStudentid() {
	
		return studentid;
	
	}
	
	
	public void setStudentid(int studentid) {
	
		this.studentid = studentid;
	
	}
	
	
	public String getStudentname() {
	
		return studentname;
	
	}
	
	
	public void setStudentname(String studentname) {
	
		this.studentname = studentname;
	
	}
	
	
	public String getStudentgender() {
	
		return studentgender;
	
	}
	
	
	public void setStudentgender(String studentgender) {
	
		this.studentgender = studentgender;
	
	}
	
	
	public String getStudentdob() {
	
		return studentdob;
	
	}
	
	
	public void setStudentdob(String studentdob) {
	
		this.studentdob = studentdob;
	
	}
	
	
	public String getStudentaddress() {
	
		return studentaddress;
	
	}
	
	
	public void setStudentaddress(String studentaddress) {
	
		this.studentaddress = studentaddress;
	
	}
	
	
	public String getStudentnumber() {
	
		return studentnumber;
	
	}
	
	
	public void setStudentnumber(String studentnumber) {
	
		this.studentnumber = studentnumber;
	
	}
	
	
	public String getStudentemail() {
	
		return studentemail;
	
	}
	
	
	public void setStudentemail(String studentemail) {
	
		this.studentemail = studentemail;
	
	}
	
	
	public String getStudentcourse() {
	
		return studentcourse;
	
	}
	
	
	public void setStudentcourse(String studentcourse) {
	
		this.studentcourse = studentcourse;
	
	}
	
	
	public StudentBean(int sid, String studentname, String studentgender,
			String studentdob, String studentaddress, String studentnumber,
			String studentemail, String studentcourse) {
		
		super();
		
		this.studentid = sid;
		
		this.studentname = studentname;
		
		this.studentgender = studentgender;
		
		this.studentdob = studentdob;
		
		this.studentaddress = studentaddress;
		
		this.studentnumber = studentnumber;
		
		this.studentemail = studentemail;
		
		this.studentcourse = studentcourse;
	
	}
	
	
	public StudentBean(String studentname, String studentgender,
			String studentdob, String studentaddress, String studentnumber,
			String studentemail, String studentcourse) {
	
		super();
		
		this.studentname = studentname;
		
		this.studentgender = studentgender;
		
		this.studentdob = studentdob;
		
		this.studentaddress = studentaddress;
		
		this.studentnumber = studentnumber;
		
		this.studentemail = studentemail;
		
		this.studentcourse = studentcourse;
	
	}
	
	
	public StudentBean() {
	
		super();
		
		// TODO Auto-generated constructor stub
	}
		

}
