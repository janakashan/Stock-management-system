package com.feedback;

public class Feedback {
     
	
	// Private fields to store feedback data
	private int id;
	private String name;
	private String email;
	private String massage;

	
	// getter method for id
	public int getId() {
		return id;
	}

	//setter method for id
	public void setId(int id) {
		this.id = id;
	}
     // getter method for name
	public String getName() {
		return name;
	}

	//setter method for name
	public void setName(String name) {
		this.name = name;
	}

	//getter method for email 
	public String getEmail() {
		return email;
	}

	// setter method for email
	public void setEmail(String email) {
		this.email = email;
	}

	//getter method for message
	public String getMassage() {
		return massage;
	}

	//setter method for message
	public void setMassage(String massage) {
		this.massage = massage;
	}

	// Constructor
	public Feedback(int id, String name, String email, String massage) {

		this.id = id;
		this.name = name;
		this.email = email;
		this.massage = massage;
	}

}
