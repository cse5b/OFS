package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/deleteservlet")
public class deleteservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
      
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String at = request.getParameter("id");
		int id =Integer.parseInt(at);
		product ca = new product();
		ca.setProduct_id(id);
		delprod ac= new delprod();
		String ad = ac.delcat(ca);
		System.out.print("are re");
		if(ad.equals("SUCCESS"))   
		{
		request.getRequestDispatcher("viewproduct.jsp").forward(request, response);
		}
		else   //On Failure, display a meaningful message to the User.
		{
		request.setAttribute("errMessage", ad);
		request.getRequestDispatcher("viewproduct.jsp").forward(request, response);
		}	
	}
}
