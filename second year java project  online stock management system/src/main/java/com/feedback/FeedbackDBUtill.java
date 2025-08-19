package com.feedback;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class FeedbackDBUtill {

	private static boolean isSuccess;
	private static Connection con = null;
	private static Statement stmt = null;
	private static ResultSet rs = null;
	
	
	
	// Method to insert feedback into the database
	public static boolean insertfeedback(String name, String email, String message) {

		boolean isSuccess = false;

		try {

			con = DBConnect.getConnection();
			stmt = con.createStatement();
			String sql = "insert into feedback (name,email,message) values('" + name + "','" + email + "','" + message + "')";
			int rs = stmt.executeUpdate(sql);

			if (rs > 0) {

				isSuccess = true;

			} else {

				isSuccess = false;
			}

		} catch (Exception e) {

			e.getStackTrace();
		}

		return isSuccess;

	}

	public static List<Feedback> getAllFeedback() {
		List<Feedback> fed = new ArrayList<>();
      
		// an exception handling
		try {
			con = DBConnect.getConnection(); // database connection
			stmt = con.createStatement(); //SQL statement
			String sql = "select * from feedback"; //SQL select query
			rs = stmt.executeQuery(sql); // result set

			if (rs.next()) {
                 
				// details get the form
				
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String email = rs.getString("email");
				String message = rs.getString("message");

				Feedback F = new Feedback(id, name, email, message);
				fed.add(F); //objects add to the list

			}
		} catch (Exception e) {
			e.printStackTrace();// print exception
		}

		return fed;
	}
	
	
	
        // validation part
	    public static List<Feedback> validate(String name, String email) {
	        
	        ArrayList<Feedback> fed = new ArrayList<>();
	        
	        try {
	            
	            con = DBConnect.getConnection(); // database connection
	            stmt = con.createStatement(); //  SQL statement
	            String sql = "SELECT * FROM feedback WHERE name = '" + name + "' AND email = '" + email + "'";   // SQL query
                 rs = stmt.executeQuery(sql);//result set

	          
	            while (rs.next()) {
	                // details get the form
	            	
	                int id = rs.getInt("id");
	                String retrievedName = rs.getString("name");
	                String retrievedEmail = rs.getString("email");
	                String message = rs.getString("message");

	              
	                Feedback feedback = new Feedback(id, retrievedName, retrievedEmail, message);
	                fed.add(feedback); //objects add to the list
	            }
	        } catch (Exception e) {
	            e.printStackTrace();
	        } finally {
	           
	            try {
	                if (rs != null) rs.close();//result set close
	                if (stmt != null) stmt.close(); //statement close
	                if (con != null) con.close(); // connection close
	            } catch (Exception e) {
	                e.printStackTrace();
	            }
	        }

	        return fed; 
	    }


		// Method to update feedback into the database
	    public static boolean updatefeedback(int id,String name, String email,String message) {
	    	
	    	
	    	
	    	try {
	    		
	    		 con = DBConnect.getConnection();// database connection
		         stmt = con.createStatement(); //SQL statement 
	    		String sql = "update feedback set name  ='"+name+"',email = '"+email+"', message = '"+message+"' "+ "where id= '"+id+"'";// SQL query to insert feedback into the database
	    		
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs>0) {
	    			
	    			isSuccess = true;
	    		}
	    		
	    		else {
	    			
	    			isSuccess = false;
	    		}
	    		
	    	}catch(Exception e) {
	    		 e.printStackTrace(); // print exception
	    	}
	    	
	    	
	    	
	    	return isSuccess;
	    }
	    
	    
		// Method to delete feedback into the database
	    
	    public static boolean deletefeedback(String id) {
	    	
	    	int convId = Integer.parseInt(id);
	    	
	    	try {
	    		
	    		 con = DBConnect.getConnection(); // database connection
		         stmt = con.createStatement(); //SQL statement
	    		String sql = "delete from feedback where id ='"+convId+"'" ; // SQL query to delete feedback based on the ID
	    		
	    		int rs = stmt.executeUpdate(sql);
	    		
	    		if(rs>0) {
	    			
	    			isSuccess = true;
	    		}
	    		
	    		else {
	    			
	    			isSuccess = false;
	    		}
	    		
	    	}catch(Exception e) {
	    		 e.printStackTrace(); // print exception 
	    	}
	    	
	    	
	    	
	    	return isSuccess;
	    	
	    }
}

