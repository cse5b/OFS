package com.admin;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Checklogin
 */
@WebServlet("/Checklogin")
public class Checklogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String name = request.getParameter("uname");
         String pass = request.getParameter("upass");
         
         reg r = new adchklogin().chk(name, pass);
         if(r == null)
 		{
 			response.sendRedirect("admin.html");
 		}
 		else 
 		{   
 			HttpSession session = request.getSession();
 			session.setAttribute("ADMINLOGIN",r);
 			RequestDispatcher rd = request.getRequestDispatcher("adminwelcome.html");
 			rd.forward(request, response);
 		}
 		
	}

}
