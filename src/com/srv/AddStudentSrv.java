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

@WebServlet("/AddStudentSrv")
public class AddStudentSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String studentname=request.getParameter("studentname");
		
		String studentgender=request.getParameter("studentgender");
		
		String studentdob=request.getParameter("studentdob");
		
		String studentaddress=request.getParameter("studentaddress");
		
		String studentnumber=request.getParameter("studentnumber");
		
		String studentemail=request.getParameter("studentemail");
		
		String studentcourse=request.getParameter("studentcourse");
		
		StudentBean sb=new StudentBean(studentname, studentgender, studentdob, studentaddress, studentnumber, studentemail, studentcourse);
		
		HttpSession session=request.getSession();
		
		StudentDao sd=new StudentDao();
		
		CouncilorDao cd=new CouncilorDao();
		
		CouncilorBean cb=(CouncilorBean)session.getAttribute("uname");
		
		if(sd.checkEmail(studentemail))
		{
			response.sendRedirect("addstudent.jsp?un=invalid");
		}
		
		else{
		
		if(sd.addStudent(sb)!=0)
		{
			
			cd.setCount(cb.getCounciloremail());
			
			CourseDao crsdao=new CourseDao();
			
			session.setAttribute("sb", sb);
		
			response.sendRedirect("addstudentsuccess.jsp");
		
		}
		
		}
		
	}
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	}

}
