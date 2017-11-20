package com.login;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class dblogin {
	
	public static Connection connectcall() {
      Connection con = null;
		try{
			Class.forName("com.mysql.jdbc.Driver");
    	     con = DriverManager.getConnection("jdbc:mysql://localhost:3306/project","root","ravi");
		}catch(Exception e){
			e.printStackTrace();
		}
	
	return con;
	}
	public user checkLogin(String email , String password)
	{
		user us = null;
		Connection con = null;
			 
	    con = dblogin.connectcall();
	    
		 us = new user();
		try{
		  String sql = "select * from user where email=? and password=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, email);
			pst.setString(2, password);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				
				us.setEmail(rs.getString("email"));
				us.setPassword(rs.getString("password"));
				us.setUser_id(rs.getInt("user_id"));
				us.setFname(rs.getString("fname"));
				us.setLname(rs.getString("lname"));
				us.setMobile(rs.getString("mobile"));
				
			}
			
	       
		}catch(Exception e){
			e.printStackTrace();
		}
	return us;
	}



}
