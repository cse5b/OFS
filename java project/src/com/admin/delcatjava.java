package com.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.login.dblogin;

public class delcatjava {

	public String delcat(Category ca) {
		int pcat = ca.getCat_id();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
	    con = dblogin.connectcall();
		String query = "delete from category where cat_id = ? "; 
		preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		preparedStatement.setInt(1, pcat);
		
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
