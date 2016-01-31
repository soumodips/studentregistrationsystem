package com.srv;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.bean.CouncilorBean;
import com.bean.RegistrarBean;
import com.dao.CouncilorDao;
import com.dao.RegistrarDao;

@WebServlet("/UpdateRegistrarProfileSrv")

public class UpdateRegistrarProfileSrv extends HttpServlet {

	private static final long serialVersionUID = 1L;

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RegistrarDao rd=new RegistrarDao();
	
		RegistrarBean rb=new RegistrarBean(request.getParameter("registrarname"), request.getParameter("registrarusername"), request.getParameter("registrarpassword"), request.getParameter("registrarnumber"));
		
		if(rd.updateRegistrar(rb))
		{
			
			response.sendRedirect("updateregistrarprofilesuccess.jsp");
			
			HttpSession ses=request.getSession();
			ses.setAttribute("uname", rb);
		}
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doGet(request, response);
	
	}

}
