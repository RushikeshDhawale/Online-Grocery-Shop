package com.mughalsaraibazaar.main.validation;

public class DataValidation {
	
	private String result;
	public String contactValid(String name,String email,String message) {
		
		int n_len = name.length();
		int e_len = email.length();
		int m_len = message.length();
		
		if(n_len<2 || n_len>25) {
			result = "Invalid Name";
		}
		else if(e_len<2 || e_len>25) {
			result = "Invalid Email";
		}
		else if(m_len<2 || m_len>250) {
			result = "Invalid Message";
		}
		
		else {
			result = "Valid";
		}
		
		 return result;
	}
	
	
	public String validCrediantials(String nuser, String ruser, String npass, String rpass) {
		
		int n_user = nuser.length();
		int r_user = ruser.length();
		int n_pass = npass.length();
		int r_pass = rpass.length();
		
		if(n_user<6 || n_user>15) {
			result = "Invalid New User Name";
		}
		else if(r_user<6 || r_user>15) {
			result = "Invalid Re Enter Password";
		}
		else if(n_pass<6 || n_pass>20) {
			result = "Invalid Password";
		}
		else if(r_pass<6 || r_pass>20) {
			result = "Invalid Re Enter Password";
		}

		
		else {
			result = "Valid";
		}
		
		 return result;
		
	}

}
