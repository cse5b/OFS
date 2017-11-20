package com.cart;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.admin.product;
import com.login.dblogin;
import com.login.user;
import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.Statement;

@WebServlet("/orderservlet")
public class orderservlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		 user us = (user) session.getAttribute("LOGINDATA");
		 CartBean cs = (CartBean) session.getAttribute("cart");
		
			System.out.println("arre1");

		 Connection con = null;
		
		 Integer key = 0;
		 
		 int totorder = (int) cs.getOrderTotal();
		 
		 try{   
		    con = dblogin.connectcall();
		    String query = "insert into project.order values(NULL, "+totorder+", "+us.getUser_id()+")";
			Statement st =  (Statement) con.createStatement();
			st.executeUpdate(query, Statement.RETURN_GENERATED_KEYS);
			ResultSet rs = st.getGeneratedKeys();
			System.out.println("arre");

			if (rs != null && rs.next()) {
			    key = rs.getInt(1);
			}
			System.out.println(key);
			st.close();
			Integer i =0;
		   for(CartItemBean c : cs.getCartItems()){
			   String Name = c.getName();
			   int totalprice = (int)c.getTotalCost();
			   int quantity = c.getQuantity();
			   
			   System.out.println(Name);
			   System.out.println(totalprice);
			   System.out.println(quantity);

			   String query1 = "select product_id from project.product where p_name = '"+Name+"' ";
			   st = (Statement) con.createStatement();
			   rs = st.executeQuery(query1);
			  	product pa = new product();
			    while(rs.next()){
				     pa.setProduct_id(rs.getInt("product_id"));
				    }
				

			   st.close();
			   String query2 = "insert into  order_row values(NULL , "+key+", "+pa.getProduct_id()+", "+quantity+", "+totalprice+")";
			   st = (Statement) con.createStatement();
			  i  += st.executeUpdate(query2);
			    
		   }
		   
		    	  if(i>0){
				request.getRequestDispatcher("invoice.jsp").forward(request, response);
				  } 
			con.close();
		 }catch(Exception e){
		    	e.printStackTrace();
		    }
			
	
	}
}
