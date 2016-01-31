package com.srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CouncilorBean;
import com.dao.CouncilorDao;

@WebServlet("/UpdateCouncilorSrv")

public class UpdateCouncilorSrv extends HttpServlet {

	private static final long serialVersionUID = 1L;


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
	
		CouncilorDao cd=new CouncilorDao();
		
		CouncilorBean cb=new CouncilorBean(Integer.parseInt(request.getParameter("councilorid")),request.getParameter("councilorname"),request.getParameter("counciloraddress"),request.getParameter("councilornumber"),request.getParameter("counciloremail"),request.getParameter("councilorpass"));
		
		if(cd.updateCouncilor(cb))
		
			response.sendRedirect("updatecounsilorsuccess.jsp");
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);
}

}
