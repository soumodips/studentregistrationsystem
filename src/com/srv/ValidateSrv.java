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

@WebServlet("/ValidateSrv")

public class ValidateSrv extends HttpServlet {
	

	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String uname=request.getParameter("uname");
		
		String pass=request.getParameter("pass");
		
		String loginas=request.getParameter("loginas");
		
		
		String page="index.jsp?un=invalid";
		
		
		
		if(loginas.equals("Registrar")){
		
			RegistrarDao rd=new RegistrarDao();
			
			RegistrarBean rb=rd.validateRegistrar(uname, pass);
			
			if(rb!=null)
			
			{
			
				HttpSession ses=request.getSession();
				
				ses.setAttribute("uname", rb);
				
				page="registrarhome.jsp";
			
			}
			
				

		}
		
		else if(loginas.equals("Councilor")){
			
			CouncilorDao cd=new CouncilorDao();
			
			CouncilorBean cb=cd.validateCouncilor(uname, pass);
			
			if(cb!=null)
			{
			
				HttpSession ses=request.getSession();
				
				ses.setAttribute("uname", cb);
				
				page="councilorhome.jsp";
			
			}
		
		}
		
		response.sendRedirect(page);
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doGet(request, response);		
		
	}
	

}
