package com.srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.bean.CouncilorBean;
import com.bean.CourseBean;
import com.dao.CouncilorDao;
import com.dao.CourseDao;

@WebServlet("/UpdateCourseSrv")
public class UpdateCourseSrv extends HttpServlet {

	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		CourseDao cd=new CourseDao();
		
		CourseBean cb=new CourseBean(Integer.parseInt(request.getParameter("courseid")),request.getParameter("coursename"),request.getParameter("courseduration"),request.getParameter("coursestart"),request.getParameter("courseend"),request.getParameter("courseintake"),request.getParameter("coursefee"),Integer.parseInt(request.getParameter("seatavailable")));
		
		if(cd.updateCourse(cb))
		
			response.sendRedirect("updatecoursesuccess.jsp");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	
	}

}
