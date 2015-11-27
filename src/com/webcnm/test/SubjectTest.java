package com.webcnm.test;

import java.util.List;

import com.webcnm.modal.Subject;
import com.webcnm.tranfer.SubjectTranfer;

public class SubjectTest {

	public static void main(String [] args) {
			
		Subject sjj = new Subject();
		SubjectTranfer daoo = new SubjectTranfer();
//		sjj.setName("Cong nghe web tien tien");
//		sjj.setSumary("I want to get some experience on a J2EE web application "
//				+ "using jsp/servlets and also using jdbc with MySQL,deployed "
//				+ "in Tomcat preferably. Can anybody suggest a good place from where "
//				+ "I can download a full working project with source code for free. "
//				+ "The idea is to develop the same or a similar project from scratch, step by step. "
//				+ "Thanks in advance, and wishing you all a very Happy New Year.");
//		daoo.addSubject(3, sjj);
//		daoo.deleteSubject(8);
		sjj.setName("HGFD");
		sjj.setSumary("dasd das d asd asd as  ads a d das adsd");
		daoo.updateSubject(sjj, 27);
//		sjj = daoo.findByID(7);
//		System.out.println("Name: " + sjj.getName());
	}
}
