package com.webcnm.helper;

public class Validation {

	StringHelper helper = new StringHelper();
	
	public boolean checkRequired(String field) {
		boolean check = false;
		field = helper.validateInput(field);
		if(field != "" && !field.isEmpty()) {
			check = true;
		}
		return check;
	}
	
	public boolean checkMax(String field, int max) {
		boolean check = false;
		field = helper.validateInput(field);
		if(field.length() <= max) {
			check = true;
		}
		return check;
	}
	
	public boolean checkMin(String field, int min) {
		boolean check = false;
		field = helper.validateInput(field);
		if(field.length() >= min) {
			check = true;
		}
		return check;
	}
	
	public static void main(String [] args) {
//		Validation v = new Validation();
//		if(v.checkMin("asdasd", 9)) {
//			System.out.println("OK");
//		} else {
//			System.out.println("FAILED");
//		}
	}
}
