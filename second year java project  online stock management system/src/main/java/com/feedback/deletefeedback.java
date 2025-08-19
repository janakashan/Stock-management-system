package com.feedback;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


public class deletefeedback extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
		String id = request.getParameter("id");
		boolean isTrue;
		
		 isTrue = FeedbackDBUtill.deletefeedback(id);
		 
		 if (isTrue == true) {
				
				RequestDispatcher dis = request.getRequestDispatcher("deletesucces.jsp");
				dis.forward(request, response);
			}
			
			else {
				
				RequestDispatcher dis = request.getRequestDispatcher("deleteunsucces.jsp");
				dis.forward(request, response);
				
	}

}
	
}