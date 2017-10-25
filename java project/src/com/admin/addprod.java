package com.admin;
import com.login.*;


import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.http.Part;

import com.admin.product;
public class addprod {
	public String prodadd(product p) throws IOException, SQLException{
		
	String pname = p.getP_name();
	String pcat = p.getP_category();
	
	String pspec =p.getP_specification();
	String pmat =p.getP_material(); 
	String pwar =p.getP_warranty();
	String pri = p.getP_price();
	String spri = p.getP_sprice();
	Part image =p.getImage();
		
		Connection con = null;
		PreparedStatement preparedStatement = null;
		ResultSet rs = null;
		try
		{
	    con = dblogin.connectcall();
	    con.setAutoCommit(false);
		InputStream is = image.getInputStream();
		String query = "insert into p_desc values (NULL,?,?,?)"; 
		preparedStatement = con.prepareStatement(query); 
		preparedStatement.setString(1, pmat);
		preparedStatement.setString(2, pspec);
		preparedStatement.setString(3, pwar);
		preparedStatement.addBatch(query);
		
		String query1 = "select * from category where p_cat=?"; 
		preparedStatement = con.prepareStatement(query1); 
		preparedStatement.setString(1, pcat);
		preparedStatement.addBatch(query1);
	    rs = preparedStatement.executeQuery(query1);
	    rs.last();
	    int cat_id=rs.getInt("cat_id");
	
		String query2 = "insert into product values (NULL,?,?,?,?,?)"; 
		preparedStatement = con.prepareStatement(query2); 
		preparedStatement.setString(1, pname);
		preparedStatement.setString(2, pri);
		preparedStatement.setString(3, spri);
		preparedStatement.setBlob(4, is);
		preparedStatement.setInt(5, cat_id);
		preparedStatement.addBatch(query2);
			     
	
			      
			      int[] ii = preparedStatement.executeBatch();
			     
			     
		for(int i : ii ){
			if( i == 0 ){
				con.rollback();
				return "Oops.. Something went wrong there..!"; 
	       } 
		}
		}
		catch(SQLException e)
		{
		e.printStackTrace();
		}
		con.commit();
		return "SUCCESS"; 
		
	}
}
