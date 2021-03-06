package com.admin;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import com.login.dblogin;
import com.mysql.jdbc.PreparedStatement;



@WebServlet("/addprodservlet")
@MultipartConfig(maxFileSize = 16177216)
public class addprodservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {		
	 
		String pname = request.getParameter("pname");
		String model = request.getParameter("mod");
		
		String dim = request.getParameter("dim");
		String pcat = request.getParameter("pcat");
		String pspec = request.getParameter("spec");
		String pwar = request.getParameter("war");
		String pt = request.getParameter("pri");
		 int pri =Integer.parseInt(pt);
		String s = request.getParameter("spri");
		 int spri =Integer.parseInt(s);

	       
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
				   
				    
				    String query2 = "insert into product values(NULL,?,?,?,?,?,?,?,?,?)"; 
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
					
					int i  = preparedStatement.executeUpdate();
				   
					if(i > 0)   //On success, you can display a message to user on Home page
					{
						request.setAttribute("errMessage", "Inserted Successfully");
					request.getRequestDispatcher("addproduct.jsp").forward(request, response);
					}
					else   //On Failure, display a meaningful message to the User.
					{
					request.setAttribute("errMessage", "Opps something went wrong");
					request.getRequestDispatcher("addproduct.jsp").forward(request, response);
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
 
