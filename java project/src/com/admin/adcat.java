package com.admin;
import com.login.dblogin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.admin.Category;
public class adcat {
	public String crap(Category ca) {
		String pcat = ca.getP_cat();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
	    con = dblogin.connectcall();
		String query = "insert into category values (NULL,?)"; //Insert user details into the table 'USERS'
		preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		preparedStatement.setString(1, pcat);
		
		int i= preparedStatement.executeUpdate();
		if (i!=0) 
			return "SUCCESS"; 
			}
			catch(SQLException e)
			{
			e.printStackTrace();
			}
			return "Oops.. Something went wrong there..!";  
	}
	

}
