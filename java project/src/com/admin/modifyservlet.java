package com.admin;

import java.io.IOException;
import java.io.InputStream;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.login.dblogin;
import com.mysql.jdbc.PreparedStatement;

@WebServlet("/modifyservlet")
@MultipartConfig(maxFileSize = 16177216)
public class modifyservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String at = request.getParameter("id");
		int id = Integer.parseInt(at);
            String model = request.getParameter("mod");
		String dim = request.getParameter("dim");
		String pname = request.getParameter("pname");
		String pcat = request.getParameter("pcat");
		String pspec = request.getParameter("spec");
		String pwar = request.getParameter("war");
	
		int pri = Integer.parseInt(request.getParameter("pri"));
		
		int spri = Integer.parseInt(request.getParameter("spri"));
	

	       PrintWriter out = response.getWriter();
	       
	        Connection con = null; 
	        ResultSet  rs = null;
	    InputStream is = null;
	    Part filePart = request.getPart("image");
	    if (filePart != null) {
	   	            // prints out some information for debugging
	   	            System.out.println(filePart.getName());
	   	            System.out.println(filePart.getSize());
	   	            System.out.println(filePart.getContentType());
	   	    
	   	            // obtains input stream of the upload file
	   	            is = filePart.getInputStream();
	    }
	       
				try{
					
				    con = dblogin.connectcall();
				    String query1 = "select cat_id from category where p_cat = ?"; 
				    PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement(query1); 
					preparedStatement.setString(1, pcat);

				    rs = preparedStatement.executeQuery();
				   product pa = new product();
				    while(rs.next()){
				     pa.setCat_id(rs.getInt("cat_id"));
				 
				    }
				    preparedStatement.close();
				   
				    
				    String query2 = "update product set spec = ?, p_name = ?, p_price = ?, special_price = ?, p_catid = ?, warranty = ?, p_image = ? dimension = ? modelno = ? where product_id = ? "; 
					preparedStatement = (PreparedStatement) con.prepareStatement(query2); 
					preparedStatement.setString(1, pspec);
					preparedStatement.setString(2, pname);
					preparedStatement.setInt(3, pri);
					preparedStatement.setInt(4, spri);
					preparedStatement.setInt(5, pa.getCat_id());
					preparedStatement.setString(6, pwar);
					preparedStatement.setBlob(7, is);
					preparedStatement.setString(8, dim);
					preparedStatement.setString(9, model);

					preparedStatement.setInt(10, id);
					
					int i  = preparedStatement.executeUpdate();
			
					if(i > 0)   //On success, you can display a message to user on Home page
					{
	
					request.getRequestDispatcher("viewproduct.jsp").forward(request, response);
					}
					else   //On Failure, display a meaningful message to the User.
					{
					request.setAttribute("errMessage", "bad code");
					out.print("can't update");
					request.getRequestDispatcher("modifyproduct.jsp").forward(request, response);
					}
				}
				catch(Exception e){
					e.printStackTrace();
				}	
				finally{
					if(con != null){
						try{
							con.close();
						}
						catch(Exception e){
							e.printStackTrace();
						}
					}
				}
	}

}
