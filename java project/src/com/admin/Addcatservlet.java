package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/Addcatservlet")
public class Addcatservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cat = request.getParameter("cat");
		Category ca = new Category ();
		ca.setP_cat(cat);
		adcat ac= new adcat();
		String ad = ac.crap(ca);
		
		if(ad.equals("SUCCESS"))   
		{
		request.getRequestDispatcher("success.html").forward(request, response);
		}
		else   //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", ad);
		request.getRequestDispatcher("addcategory.html").forward(request, response);
		}

	}

}
