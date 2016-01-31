package com.srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CouncilorBean;
import com.bean.CourseBean;
import com.dao.CouncilorDao;
import com.dao.CourseDao;

@WebServlet("/AddCourseSrv")
public class AddCourseSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String coursename=request.getParameter("coursename");
		
		String courseduration=request.getParameter("courseduration");
		
		String coursestart=request.getParameter("coursestart");
		
		String courseend=request.getParameter("courseend");
		
		String courseintake=request.getParameter("courseintake");
		
		String coursefee=request.getParameter("coursefee");
		
		int seatavailable=Integer.parseInt(request.getParameter("courseintake"));
		
		CourseBean cb=new CourseBean(coursename, courseduration, coursestart, courseend, courseintake, coursefee,seatavailable);
		
		CourseDao cd=new CourseDao();
		
		HttpSession session=request.getSession();
		
		if(cd.addCourse(cb)!=0)
		{
			
			session.setAttribute("cb", cb);
			
			response.sendRedirect("addcoursesuccess.jsp?x=yes");
		}
		else
			
			response.sendRedirect("addcoursesuccess.jsp?x=no");
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);	
	}

}
