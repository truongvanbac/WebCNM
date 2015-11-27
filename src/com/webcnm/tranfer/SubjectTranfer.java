package com.webcnm.tranfer;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.webcnm.modal.HibernateUtil;
import com.webcnm.modal.Subject;
import com.webcnm.modal.Teacher;

public class SubjectTranfer {

	public List<Subject> getListAll(int tch_id, int start, int off) {
		List<Subject> lists = new ArrayList<Subject>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM subject INNER JOIN teacher ON "
				+ "subject.tch_id = teacher.id WHERE tch_id = :tch_id LIMIT " + start + ", " + off);
		query.addEntity(Subject.class);
		query.setParameter("tch_id", tch_id);
		List<Subject> subjects = query.list();
		for (Iterator iterator =  subjects.iterator(); iterator.hasNext();) {
			Subject sj = (Subject) iterator.next();
			lists.add(sj);
		}
		tx.commit();
		session.close();
		return lists;
	}
	
	public int counAllRecord(int tch_id) {
		List<Subject> lists = new ArrayList<Subject>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM subject INNER JOIN teacher ON "
				+ "subject.tch_id = teacher.id WHERE tch_id = :tch_id");
		query.addEntity(Subject.class);
		query.setParameter("tch_id", tch_id);
		lists = query.list();
		tx.commit();
		session.close(); 
		return lists.size();
	}
	
	public void addSubject(int tch_id, Subject sj) {
		sj.setTch_id(tch_id);
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(sj);
		tx.commit();
		session.close();
	}
	
	public void deleteSubject(int sj_id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		Subject sj = (Subject)session.load(Subject.class, sj_id);  
		session.delete(sj);
		tx.commit();
		session.close();
	}
	
	public void updateSubject(Subject sj, int id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		Subject sj2 = (Subject)session.load(Subject.class, id); 
		sj2.setName(sj.getName());
		sj2.setSumary(sj.getSumary());
		session.update(sj2);
		tx.commit();
		session.close();
	}
	
	public Subject findByID(int sj_id) {
		Subject sj = null;
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		SQLQuery query = session.createSQLQuery("SELECT * "
				+ "FROM subject WHERE id = :id");
		query.addEntity(Subject.class);
		query.setParameter("id", sj_id);
		sj = (Subject) query.uniqueResult();
		tx.commit();
		return sj;
	}
}
