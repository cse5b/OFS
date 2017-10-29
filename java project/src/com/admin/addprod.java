package com.admin;
import com.login.*;


import java.io.IOException;
import java.io.InputStream;
import java.sql.BatchUpdateException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



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
	InputStream image =p.getImage();
		
	
		//PreparedStatement preparedStatement = null;
		//PreparedStatement preparedStatement = null;

    	
	    Connection con = dblogin.connectcall();
	    

	   /* String query1 = "select * from category where p_cat=?"; 
	    PreparedStatement preparedStatement = con.prepareStatement(query1); 
		preparedStatement.setString(1, pcat);
	
	    rs = preparedStatement.executeQuery();
	    rs.last();
	    int cat_id = rs.getInt("cat_id");
	   
	    
	    preparedStatement.close();
		
	
		String query = "insert into p_desc values(NULL,?,?,?)"; 
		preparedStatement = con.prepareStatement(query); 
		preparedStatement.setString(1, pmat);
		preparedStatement.setString(2, pspec);
		preparedStatement.setString(3, pwar);
		preparedStatement.addBatch();
		
		 preparedStatement.close();
		String query2 = "insert into product values(NULL,?,?,?,?,?)"; 
		preparedStatement = con.prepareStatement(query2); 
		preparedStatement.setString(1, pname);
		preparedStatement.setString(2, pri);
		preparedStatement.setString(3, spri);
		preparedStatement.setBlob(4, image);
		preparedStatement.setInt(5, cat_id);
		preparedStatement.addBatch();
		
		int[] i  = preparedStatement.executeBatch();
	
		for(int c=0; c<i.length ; c++ ){
			
		if(i[c]!=0 ){
			con.commit();
			return "SUCCESS";} }
	 */
	    int count=0;
	    java.sql.Statement st = con.createStatement();
	    
	    st.addBatch("insert into p_desc values(NULL,"+pmat+","+pspec+","+pwar+")");
	    st.addBatch("insert into product values(NULL,"+pname+","+pri+","+spri+","+image+",1)");
	    try{
	    	int[] i = st.executeBatch();
	    	for(int j=0; j<i.length; j++){
	    		count++;
	    	}
	    if(count != 0){
	    	return "SUCCESS";
	    }
		}	catch(BatchUpdateException e)
			{
		    int[] i = e.getUpdateCounts();
		    System.out.println("terminated at :"+(i.length));
			for(int j=0; j<i.length; j++){
				System.out.println("records affected "+ (j+1) + ":"+i[j]);
			}
			}
			return "Oops.. Something went wrong there..!";  // On failure, send a message from here.
		
	}
}
