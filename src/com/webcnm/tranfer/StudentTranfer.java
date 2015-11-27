package com.webcnm.tranfer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.webcnm.modal.HibernateUtil;
import com.webcnm.modal.Student;

public class StudentTranfer {

	public List<Student> getListAll(int tch_id, int start, int off) {
		List<Student> lists = new ArrayList<Student>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM student INNER JOIN teacher ON "
				+ "student.tch_id = teacher.id WHERE tch_id = :tch_id LIMIT " + start + ", " + off);
		query.addEntity(Student.class);
		query.setParameter("tch_id", tch_id);
		List<Student> students = query.list();
		for (Iterator iterator =  students.iterator(); iterator.hasNext();) {
			Student st = (Student) iterator.next();
			lists.add(st);
		}
		tx.commit();
		session.close();
		return lists;
	}
	
	public int counAllRecord(int tch_id) {
		List<Student> lists = new ArrayList<Student>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM student INNER JOIN teacher ON "
				+ "student.tch_id = teacher.id WHERE tch_id = :tch_id");
		query.addEntity(Student.class);
		query.setParameter("tch_id", tch_id);
		lists = query.list();
		tx.commit();
		session.close(); 
		return lists.size();
	}
	
	public void deleteStudent(int st_id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		Student st = (Student)session.load(Student.class, st_id);  
		session.delete(st);
		tx.commit();
		session.close();
	}
}
