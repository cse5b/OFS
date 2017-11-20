package com.admin;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.login.dblogin;

public class delprod {

	public String delcat(product ca) {
		int id = ca.getProduct_id();
		Connection con = null;
		PreparedStatement preparedStatement = null;
		try
		{
	    con = dblogin.connectcall();
		String query = "delete from product where product_id = ? "; 
		preparedStatement = con.prepareStatement(query); //Making use of prepared statements here to insert bunch of data
		preparedStatement.setInt(1, id);
		
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
