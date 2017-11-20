package com.admin;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;



@WebServlet("/delcatservlet")
public class delcatservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       




	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String at = request.getParameter("id");
		int cat =Integer.parseInt(at);
		Category ca = new Category ();
		ca.setCat_id(cat);
		delcatjava ac= new delcatjava();
		String ad = ac.delcat(ca);
		
		if(ad.equals("SUCCESS"))   
		{
		request.setAttribute("errMessage", "deleted successfully");
		request.getRequestDispatcher("deletecategory.jsp").forward(request, response);
		}
		else   //On Failure, display a meaningful message to the User.
		{
			
		request.setAttribute("errMessage", ad);
		request.getRequestDispatcher("deletecategory.jsp").forward(request, response);
		}


	}

}
