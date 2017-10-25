package com.admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.login.dblogin;


public class adchklogin {
	public reg chk(String name, String pass){
		reg r = null;
		Connection con = null;
			 
	    con = dblogin.connectcall();
	    
		 r = new reg();
		try{
		  String sql = "select * from reg where uname=? and upass=?";
			PreparedStatement pst = con.prepareStatement(sql);
			pst.setString(1, name);
			pst.setString(2, pass);
			ResultSet rs = pst.executeQuery();
			while(rs.next()){
				
				r.setUname(rs.getString("uname"));
				r.setUpass(rs.getString("upass"));

			    r.setUtype(rs.getString("utype"));
		
				
			}
			
	       
		}catch(Exception e){
			e.printStackTrace();
		}
		
		return r;
	}

}
