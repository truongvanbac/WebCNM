package com.webcnm.tranfer;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.webcnm.modal.HibernateUtil;
import com.webcnm.modal.New;

public class NewTranfer {

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<New> getListAll(int tch_id, int start, int off) {
		List<New> lists = new ArrayList<New>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM new INNER JOIN teacher ON "
				+ "new.tch_id = teacher.id WHERE tch_id = :tch_id LIMIT " + start + ", " + off);
		query.addEntity(New.class);
		query.setParameter("tch_id", tch_id);
		List<New> n = query.list();
		for (Iterator iterator =  n.iterator(); iterator.hasNext();) {
			New nw = (New) iterator.next();
			lists.add(nw);
		}
		tx.commit();
		session.close();
		
		return lists;
	}
	
	@SuppressWarnings("unchecked")
	public int counAllRecord(int tch_id) {
		List<New> lists = new ArrayList<New>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM new INNER JOIN teacher ON "
				+ "new.tch_id = teacher.id WHERE tch_id = :tch_id");
		query.addEntity(New.class);
		query.setParameter("tch_id", tch_id);
		lists = query.list();
		tx.commit();
		session.close(); 
		return lists.size();
	}
	
	public void addNew(int tch_id, New n) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.sql.Date d = null;
		try {
			d = new java.sql.Date(sdf.parse(dateFormat.format(date)).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		n.setTch_id(tch_id);
		n.setTime_created(d);
		n.setTime_updated(d);
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(n);
		tx.commit();
		session.close();
	}
	
	public void deleteNew(int nID) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		New n = (New)session.load(New.class, nID);  
		session.delete(n);
		tx.commit();
		session.close();
	}
	
	public void updateNew(New n, int id) {
		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
		java.sql.Date d = null;
		try {
			d = new java.sql.Date(sdf.parse(dateFormat.format(date)).getTime());
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		New sj2 = (New)session.load(New.class, id); 
		sj2.setTitle(n.getTitle());
		sj2.setContent(n.getContent());
		sj2.setTime_updated(d);
		session.update(sj2);
		tx.commit();
		session.close();
	}
	
	public New findByID(int nID) {
		New sj = null;
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		SQLQuery query = session.createSQLQuery("SELECT * "
				+ "FROM new WHERE id = :id");
		query.addEntity(New.class);
		query.setParameter("id", nID);
		sj = (New) query.uniqueResult();
		tx.commit();
		return sj;
	}
	
	
	@SuppressWarnings({ "unchecked", "rawtypes" })
	public List<New> getNewest(int tch_id, int start, int off) {
		List<New> lists = new ArrayList<New>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM new INNER JOIN teacher ON "
				+ "new.tch_id = teacher.id WHERE tch_id = :tch_id ORDER BY time_updated DESC LIMIT " + start + ", " + off);
		query.addEntity(New.class);
		query.setParameter("tch_id", tch_id);
		List<New> n = query.list();
		for (Iterator iterator =  n.iterator(); iterator.hasNext();) {
			New nw = (New) iterator.next();
			lists.add(nw);
		}
		tx.commit();
		session.close();
		
		return lists;
	}
	
	public List<New> getOldPost(int tch_id, int currentId, int start, int off) {
		List<New> lists = new ArrayList<New>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM new INNER JOIN teacher ON "
				+ "new.tch_id = teacher.id WHERE tch_id = :tch_id AND new.id != :currentID ORDER BY time_updated DESC LIMIT " + start + ", " + off);
		query.addEntity(New.class);
		query.setParameter("tch_id", tch_id);
		query.setParameter("currentID", currentId);
		List<New> n = query.list();
		for (Iterator iterator =  n.iterator(); iterator.hasNext();) {
			New nw = (New) iterator.next();
			lists.add(nw);
		}
		tx.commit();
		session.close();
		
		return lists;
	}
	
	
	
	public static void main(String [] args) {
//		DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
//		Date date = new Date();
//		System.out.println(dateFormat.format(date));
		NewTranfer daoN = new NewTranfer();
		List<New> listPosts = daoN.getOldPost(1, 12, 0, 10);
		for (New n : listPosts) {
			System.out.println(n.getTitle() + "<br>");
		}
	}
}
