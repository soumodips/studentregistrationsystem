package com.srv;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CouncilorBean;
import com.dao.CouncilorDao;

@WebServlet("/AddCouncilorSrv")
public class AddCouncilorSrv extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String councilorname=request.getParameter("councilorname");
		
		String counciloraddress=request.getParameter("counciloraddress");
		
		String councilornumber=request.getParameter("councilornumber");
		
		String counciloremail=request.getParameter("counciloremail");
		
		String councilorpass=request.getParameter("councilorpass");
		
		CouncilorBean cb=new CouncilorBean(councilorname, counciloraddress, councilornumber, counciloremail, councilorpass);
		
		HttpSession session=request.getSession();
		
		CouncilorDao cd=new CouncilorDao();
		
		if(cd.checkEmail(counciloremail))
		{
			response.sendRedirect("addcouncilor.jsp?un=invalid");
		}
		
		else{
		
		if(cd.addCouncilor(cb)!=0)
		{
		
			session.setAttribute("cb", cb);
			
			response.sendRedirect("addcouncilorsuccess.jsp");
		}
		
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		doGet(request, response);
	}

}
