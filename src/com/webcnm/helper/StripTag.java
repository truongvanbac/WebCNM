package com.webcnm.helper;

public class StripTag {

	public static String stringFormat(String s) {
		return s.replaceAll("(?s)<!--.*?-->", " ").replaceAll("<[^>]+>", " ");
	}
	
	public static void main(String [] args) {
		System.out.println("  ".trim().length());
	}
}
