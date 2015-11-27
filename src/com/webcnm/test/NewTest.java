package com.webcnm.test;

import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;

import com.webcnm.modal.New;
import com.webcnm.tranfer.NewTranfer;

public class NewTest {

	public static void main(String [] args) throws ParseException {
		NewTranfer dao = new NewTranfer();
		New n = new New();
		n.setTitle("GHJU");
		n.setContent("sad das ads ads ads ads  asd asd ads ads ads ");
//		dao.updateNew(n, 1);
//		dao.addNew(1, n);
//		dao.deleteNew(1);
//		n = dao.findByID(2);
		System.out.println("Title: " + n.getTitle());
		List<New> l = new ArrayList<New>();
		l = dao.getListAll(1, 0, 10);
		for (New nw : l) {
			System.out.println("Title: " + nw.getTitle());
		}
	}
}
