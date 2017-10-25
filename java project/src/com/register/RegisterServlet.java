package com.register;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import com.login.user;


@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       



	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String mobile = request.getParameter("mobile");
		String password = request.getParameter("password");
		 user us = new  user();
			us.setFname(fname);
			us.setLname(lname);
			us.setEmail(email);
			us.setMobile(mobile);
			us.setPassword(password);
			Registerdao re= new Registerdao();
			String userRegistered = re.registerUser(us);

			if(userRegistered.equals("SUCCESS"))   //On success, you can display a message to user on Home page
			{
			request.getRequestDispatcher("/login.html").forward(request, response);
			}
			else   //On Failure, display a meaningful message to the User.
			{
			request.setAttribute("errMessage", userRegistered);
			request.getRequestDispatcher("register.jsp").forward(request, response);
			}
			
		
	}

}
