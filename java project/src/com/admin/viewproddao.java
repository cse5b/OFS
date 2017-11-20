package com.admin;

import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.login.dblogin;


public class viewproddao {
public product pro(){

	Connection con = null;
		 
    con = dblogin.connectcall();
    
	 product p = new product();
	try{
	  String sql = "select * from product";
		PreparedStatement pst = con.prepareStatement(sql);
	   
		ResultSet rs = pst.executeQuery();
		while(rs.next()){
			
			p.setProduct_id(rs.getInt("product_id"));
			p.setP_specification(rs.getString("spec"));
			p.setP_name(rs.getString("p_name"));
			p.setP_price(rs.getInt("p_price"));
			p.setP_sprice(rs.getInt("special_price"));
			p.setP_warranty(rs.getString("warranty"));
			p.setImage(rs.getBlob("image"));
				
		}
	   
	}catch(Exception e){
		e.printStackTrace();
	}
	return p;
}
}
