package com.webcnm.tranfer;

import java.security.NoSuchAlgorithmException;
import java.util.List;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.webcnm.helper.MD5Hash;
import com.webcnm.modal.HibernateUtil;
import com.webcnm.modal.Subject;
import com.webcnm.modal.Teacher;

public class TeacherTranfer {

	MD5Hash hash = new MD5Hash();

	public boolean login(String username, String pass)
			throws NoSuchAlgorithmException {
		boolean checkLogin = false;
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * "
				+ "FROM teacher WHERE username = :username AND "
				+ "password = :password");
		query.addEntity(Teacher.class);
		query.setParameter("username", username);
		query.setParameter("password", hash.getMD5Hex(pass));
		int i = query.list().size();
		if (i == 1) {
			checkLogin = true;
		}
		tx.commit();
		return checkLogin;
	}
	
	public Teacher findByUsername(String username) {
		Teacher tch = null;
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * "
				+ "FROM teacher WHERE username = :username");
		query.addEntity(Teacher.class);
		query.setParameter("username", username);
		tch = (Teacher) query.uniqueResult();
		tx.commit();
		return tch;
	}
	
	public Teacher findByID(int tch_id) {
		Teacher tch = null;
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		SQLQuery query = session.createSQLQuery("SELECT * "
				+ "FROM teacher WHERE id = :id");
		query.addEntity(Teacher.class);
		query.setParameter("id", tch_id);
		tch = (Teacher) query.uniqueResult();
		tx.commit();
		return tch;
	}
	
	public void updateProfile(Teacher sj, int id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		Teacher sj2 = (Teacher)session.load(Teacher.class, id); 
		sj2.setFullname(sj.getFullname());
		sj2.setRegency(sj.getRegency());
		sj2.setMobile_number(sj.getMobile_number());
		sj2.setPhone_com(sj.getPhone_com());
		sj2.setAdd_home(sj.getAdd_home());
		sj2.setAdd_com(sj.getAdd_com());
		sj2.setAvatar(sj.getAvatar());
		session.update(sj2);
		tx.commit();
		session.close();
	}
}
