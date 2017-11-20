package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.login.dblogin;
import com.login.user;
import com.register.Registerdao;


@WebServlet("/Profileservlet")
public class Profileservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String uid = request.getParameter("id");
		int id = Integer.parseInt(uid);
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		String gen = request.getParameter("gen");
		String street = request.getParameter("str");
		String state = request.getParameter("sta");
		String country = request.getParameter("cou");
		String pincode = request.getParameter("pin");
		
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
	    con = dblogin.connectcall();
		String query = "update user set fname = ? , lname = ? , email = ? , password = ? , mobile = ? where user_id = ? "; 
		preparedStatement = con.prepareStatement(query); 
		preparedStatement.setString(1, fname);
		preparedStatement.setString(2, lname);
		preparedStatement.setString(3, email);
		preparedStatement.setString(4, password);
		preparedStatement.setString(5, mobile);
		preparedStatement.setInt(6, id);
		
		int i= preparedStatement.executeUpdate();
		preparedStatement.close();
		if (i!=0)  {
			System.out.println("aree13");
			 
				String query1 = "insert into profile values (NULL,?,?,?,?,?,?)  "; 
				preparedStatement = con.prepareStatement(query1); 
				preparedStatement.setInt(1, id);
				preparedStatement.setString(2, gen);
				preparedStatement.setString(3, street);
				preparedStatement.setString(4, country);
				preparedStatement.setString(5, state);
				preparedStatement.setString(6, pincode);
				System.out.println("aree12");

				int j= preparedStatement.executeUpdate();
				
			if(j>0){
				   
				
				request.setAttribute("errMessage", "SUCCESS");
				request.getRequestDispatcher("profile.jsp").forward(request, response);
				}
				else   //On Failure, display a meaningful message to the User.
				{
				request.setAttribute("errMessage", "Opps something went wrong");
				request.getRequestDispatcher("profile.jsp").forward(request, response);
				}
				
			}	
		
		}
		catch(SQLException e)
		{
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
