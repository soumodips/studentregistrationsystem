package com.srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CouncilorBean;
import com.bean.StudentBean;
import com.dao.CouncilorDao;
import com.dao.CourseDao;
import com.dao.StudentDao;

@WebServlet("/UpdateStudentSrv")
public class UpdateStudentSrv extends HttpServlet {
	
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		StudentDao sd=new StudentDao();
		
		HttpSession ses=request.getSession();
		
		StudentBean sbean=(StudentBean)ses.getAttribute("sb");
		
		
		StudentBean sb=new StudentBean(Integer.parseInt(request.getParameter("studentid")),request.getParameter("studentname"),request.getParameter("studentgender"),request.getParameter("studentdob"),request.getParameter("studentaddress"),request.getParameter("studentnumber"),request.getParameter("studentemail"),request.getParameter("studentcourse"));
		
		if(sd.updateStudent(sb))
		{
			
			if(!(sbean.getStudentcourse().equals(sb.getStudentcourse())))
		
			{
			
				CourseDao cd=new CourseDao();
				
				cd.updateSeatAvailable(sbean.getStudentcourse(),sb.getStudentcourse());
			}
			
			response.sendRedirect("updatestudentsuccess.jsp");
		}
	
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
	
	}

}
