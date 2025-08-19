package com.feedback;

import java.io.IOException;


import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;



public class insertfeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
 
		// Retrieve form data from the request object (name, email, message)
		String name = request.getParameter("name");
		String  email = request.getParameter("email");
		String  message = request.getParameter("message");
		
		
boolean isTrue;
		
		isTrue=FeedbackDBUtill.insertfeedback(name, email, message);
		
		if(isTrue == true) {
			
			RequestDispatcher dis = request.getRequestDispatcher("success.jsp");
			dis.forward(request, response);
			
			}
		else
		  {
			
			RequestDispatcher dis2 = request.getRequestDispatcher("unsuccess.jsp");
			dis2.forward(request, response);
			
		 }
		
	}

}
