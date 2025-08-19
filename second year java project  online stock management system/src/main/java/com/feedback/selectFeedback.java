package com.feedback;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;

import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class selectFeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;
	

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String Name = request.getParameter("name");
		String Email = request.getParameter("email");	
		
		try {
			
		List<Feedback> fedDetails =  FeedbackDBUtill.validate(Name, Email);
		request.setAttribute("fedDetails", fedDetails);
		
		
		}catch(Exception e) {
			
			e.printStackTrace();
		}
		
		
		RequestDispatcher dis =request.getRequestDispatcher("viewfeedack.jsp");
		dis.forward(request, response);
	}

}
