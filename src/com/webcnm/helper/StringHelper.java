package com.webcnm.helper;


public class StringHelper {

	public String validateInput(String s) {
		s = StripTag.stringFormat(s);
		s = org.apache.commons.lang3.StringEscapeUtils.unescapeHtml4(s);
		s = s.replaceAll("[^a-zA-Z0-9]+","");
		s = s.trim();
		return s;
	}
	
	public String printLimitChar(String s, int limit) {
		StringBuilder buf = new StringBuilder(s);
	    if (buf.length() > limit)
	    {
	      buf.setLength(limit);
	      buf.append("...");
	    }

	    return buf.toString();
		
	}
	
	public String printText(String s) {
		return org.apache.commons.lang3.StringEscapeUtils.unescapeHtml4(StripTag.stringFormat(s)).trim();
	}
	
	public String arrayStringToString(String [] array) {
		StringBuilder builder = new StringBuilder();
		for(String s : array) {
		    builder.append(s);
		}
		return builder.toString();
	}
	
	public static void main(String [] args) {
		StringHelper h = new StringHelper();
//		String s = h.validateInput("<p>&nbsp;&nbsp;</p>");
//		if((s != "") && (!s.isEmpty())) {
//			System.out.println("OK");
//			System.out.println(s.length());
//			System.out.println(s);
//		} else {
//			System.out.println("FAILED");
//		}
//		System.out.print(h.printLimitChar(h.printText("<h2>ad ad sa dsa sad dsa <b>ads</b> dsa das</h2>")));
	}
}
