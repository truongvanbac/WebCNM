package com.webcnm.test;

import java.security.NoSuchAlgorithmException;

import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.TeacherTranfer;

public class TeacherTest {

	public static void main(String [] args) throws NoSuchAlgorithmException {
		Teacher tch = new Teacher();
		TeacherTranfer dao = new TeacherTranfer();
		
//		tch = dao.findByUsername("kay");
//		System.out.print("Name: " + tch.getId());
		tch.setFullname("Nguyen Van An");
//		tch.setPhone_com("102391023");
		dao.updateProfile(tch, 2);
	}
}
