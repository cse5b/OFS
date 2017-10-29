package com.admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;





@WebServlet("/addprodservlet")
@MultipartConfig(maxFileSize = 16177215)
public class addprodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String pname = request.getParameter("pname");
		String pcat = request.getParameter("pcat");
	
		String pspec = request.getParameter("spec");
		String pmat = request.getParameter("mat");
		String pwar = request.getParameter("war");
		String pri = request.getParameter("pri");
		String spri = request.getParameter("spri");
		 InputStream inputStream = null; // input stream of the upload file
         
	        
	        Part filePart = request.getPart("image");
	        if (filePart != null) {
	            // prints out some information for debugging
	            System.out.println(filePart.getName());
	            System.out.println(filePart.getSize());
	            System.out.println(filePart.getContentType());
	             
	            // obtains input stream of the upload file
	            inputStream = filePart.getInputStream();
	        }
	    product p = new product();
			p.setP_name(pname);
			p.setP_price(pri);
			p.setP_specification(pspec);
			p.setP_material(pname);
			p.setP_name(pmat);
			p.setP_warranty(pwar);
			p.setP_category(pcat);
			p.setP_sprice(spri);
			p.setImage(inputStream);
			try {
			addprod ap = new addprod();
			String prodad = ap.prodadd(p);
			

			if(prodad.equals("SUCCESS"))   //On success, you can display a message to user on Home page
			{
			request.getRequestDispatcher("success.html").forward(request, response);
			}
			else   //On Failure, display a meaningful message to the User.
			{
			request.setAttribute("errMessage", prodad);
			request.getRequestDispatcher("addproduct.html").forward(request, response);
			}
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();

	}

	}
}	
