package com.register;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.login.dblogin;
import com.login.user;



public class Registerdao {
	public String registerUser(user us){
	String fname = us.getFname();
	String lname = us.getLname();
	String email =  us.getEmail();
	String mobile = us.getMobile();
	String password = us.getPassword();
	Connection con = null;
	PreparedStatement preparedStatement = null;
	try
	{
    con = dblogin.connectcall();
	String query = "insert into user values (NULL,?,?,?,?,?)"; //Insert user details into the table 'USERS'
	preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
	preparedStatement.setString(1, fname);
	preparedStatement.setString(2, lname);
	preparedStatement.setString(3, email);
	preparedStatement.setString(4, password);
	preparedStatement.setString(5, mobile);
	int i= preparedStatement.executeUpdate();
	if (i!=0)  //Just to ensure data has been inserted into the database
	return "SUCCESS"; 
	}
	catch(SQLException e)
	{
	e.printStackTrace();
	}
	return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
	}
	
}
