package com.bean;

import java.io.Serializable;

public class CourseBean implements Serializable{
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private int courseid;
	
	private String coursename;
	
	private String courseduration;
	
	private String coursestart;
	
	private String courseend;
	
	private String courseintake;
	
	private String coursefee;
	
	private int seatavailable;
	
	
	public int getSeatavailable() {
		
		return seatavailable;
	
	}
	
	
	public void setSeatavailable(int seatavailable) {
		
		this.seatavailable = seatavailable;
	
	}
	
	
	public String getCoursefee() {
	
		return coursefee;
	
	}
	
	
	public void setCoursefee(String coursefee) {
	
		this.coursefee = coursefee;
	
	}
	
	
	public int getCourseid() {
	
		return courseid;
	
	}
	
	public void setCourseid(int courseid) {
	
		this.courseid = courseid;
	
	}
	
	
	public String getCoursename() {
	
		return coursename;
	
	}
	
	
	public void setCoursename(String coursename) {
	
		this.coursename = coursename;
	
	}
	
	
	public String getCourseduration() {
	
		return courseduration;
	
	}
	
	public void setCourseduration(String courseduration) {
	
		this.courseduration = courseduration;
	
	}
	
	
	public String getCoursestart() {
	
		return coursestart;
	
	}
	
	public void setCoursestart(String coursestart) {
	
		this.coursestart = coursestart;
	
	}
	
	
	public String getCourseend() {
	
		return courseend;
	
	}
	
	
	public void setCourseend(String courseend) {
	
		this.courseend = courseend;
	
	}
	
	
	public String getCourseintake() {
	
		return courseintake;
	
	}
	
	
	public void setCourseintake(String courseintake) {
	
		this.courseintake = courseintake;
	
	}
	
	
	public CourseBean(int courseid, String coursename, String courseduration,
			String coursestart, String courseend, String courseintake, String coursefee, int seatavailable) {
		
		super();
		
		this.courseid = courseid;
		
		this.coursename = coursename;
		
		this.courseduration = courseduration;
		
		this.coursestart = coursestart;
		
		this.courseend = courseend;
		
		this.courseintake = courseintake;
		
		this.coursefee=coursefee;
		
		this.seatavailable=seatavailable;
	
	}
	
	
	public CourseBean(String coursename, String courseduration,
			String coursestart, String courseend, String courseintake, String coursefee, int seatavailable) {
	
		super();
		
		this.coursename = coursename;
		
		this.courseduration = courseduration;
		
		this.coursestart = coursestart;
		
		this.courseend = courseend;
		
		this.courseintake = courseintake;
		
		this.coursefee=coursefee;
		
		this.seatavailable=seatavailable;
	
	}
	
	
	public CourseBean() {
	
		super();
		
		// TODO Auto-generated constructor stub
	}
	

}
