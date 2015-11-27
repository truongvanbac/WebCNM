package com.webcnm.tranfer;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

import org.hibernate.SQLQuery;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import com.webcnm.modal.Answer;
import com.webcnm.modal.HibernateUtil;
import com.webcnm.modal.Survey;

public class SurveyTranfer {

	public List<Survey> getListAll(int tch_id, int start, int off) {
		List<Survey> lists = new ArrayList<Survey>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM survey INNER JOIN teacher ON "
				+ "survey.tch_id = teacher.id "
				+ "WHERE tch_id = :tch_id LIMIT " + start + ", " + off);
		query.addEntity(Survey.class);
		query.setParameter("tch_id", tch_id);
		List<Survey> surveys = query.list();
		for (Iterator iterator =  surveys.iterator(); iterator.hasNext();) {
			Survey sv = (Survey) iterator.next();
			lists.add(sv);
		}
		tx.commit();
//		session.close();
		return lists;
	}
	
	public int counAllRecord(int tch_id) {
		List<Survey> lists = new ArrayList<Survey>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM survey INNER JOIN teacher ON "
				+ "survey.tch_id = teacher.id WHERE tch_id = :tch_id");
		query.addEntity(Survey.class);
		query.setParameter("tch_id", tch_id);
		lists = query.list();
		tx.commit();
		session.close();
		return lists.size();
	}
	
	public void addSurvey(int tch_id, Survey sj, Set<Answer> laws) {
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
		
		sj.setTch_id(tch_id);
		sj.setTime_created(d);
		sj.setTime_updated(d);
		
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		session.save(sj);
		for (Answer answer : laws) {
			answer.setSuv(sj);
			session.save(answer);
		}
		tx.commit();
		session.close();
	}
	
	public void deleteSurvey(int sv_id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		Survey sj = (Survey)session.load(Survey.class, sv_id);  
		Set<Answer> lists = new HashSet<Answer>();
		lists = sj.getAns();
		for (Answer answer : lists) {
			answer = (Answer) session.load(Answer.class, answer.getId());
			session.delete(answer);
		}
		session.delete(sj);
		tx.commit();
		session.close();
	}
//	
	public void updateSurvey(Survey sv, int sv_id) {
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
		Survey sv2 = (Survey) session.load(Survey.class, sv_id);
		sv2.setTitle(sv.getTitle());
		sv2.setAsk(sv.getAsk());
		sv2.setTime_updated(d);
		session.update(sv2);
		
		tx.commit();
		session.close();
	}

	public Survey findByID(int sv_id) {
		Survey sv = null;
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		SQLQuery query = session.createSQLQuery("SELECT * "
				+ "FROM survey WHERE sv_id = :id");
		query.addEntity(Survey.class);
		query.setParameter("id", sv_id);
		sv = (Survey) query.uniqueResult();
		tx.commit();
		return sv;
	}

	private List<Answer> getAnswerBySv(int sv_id) {
		List<Answer> lists = new ArrayList<Answer>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM answer WHERE sv_id = :sv_id");
		query.addEntity(Answer.class);
		query.setParameter("sv_id", sv_id);
		lists = query.list();
		tx.commit();
		session.close();
		return lists;
	}
	
	public void updateAnswer(Answer n, int aw_id, int sv_id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		
		Survey sv = (Survey) session.load(Survey.class, sv_id);
		n.setSuv(sv);
		session.save(n);
		
		tx.commit();
		session.close();
	}
	
	public void deleteAnswer(int ans_id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		Answer sj2 = (Answer)session.load(Answer.class, ans_id); 
		session.delete(sj2);
		tx.commit();
		session.close();
	}
	
	public List<Survey> getListNewestSurvey(int tch_id, int start, int off) {
		List<Survey> lists = new ArrayList<Survey>();
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();

		SQLQuery query = session.createSQLQuery("SELECT * FROM survey INNER JOIN teacher ON "
				+ "survey.tch_id = teacher.id "
				+ "WHERE tch_id = :tch_id ORDER BY time_updated DESC LIMIT " + start + ", " + off);
		query.addEntity(Survey.class);
		query.setParameter("tch_id", tch_id);
		List<Survey> surveys = query.list();
		for (Iterator iterator =  surveys.iterator(); iterator.hasNext();) {
			Survey sv = (Survey) iterator.next();
			lists.add(sv);
		}
		tx.commit();
		session.close();
		return lists;
	}
	
	public void updateNumberSelectedAnswer(int ans_id) {
		Transaction tx = null;
		SessionFactory sessionFactory = HibernateUtil.getSessionFactory();
		Session session = sessionFactory.openSession();
		tx = session.beginTransaction();
		
		Answer ans = (Answer) session.load(Answer.class, ans_id);
		ans.setNumber_selected(ans.getNumber_selected() + 1);
		session.save(ans);
		
		tx.commit();
		session.close();
	}
	
	public static void main(String [] args) {
		
		SurveyTranfer dao = new SurveyTranfer();
		Survey sv = new Survey();
//		sv.setTitle("XXX");
//		sv.setAsk("How old are you?");
////		sv.setAsk("Tư vấn tiêu dùng 2");
//		Answer a1 = new Answer();
//		a1.setContent("Ngu");
//		Answer a2 = new Answer();
//		a2.setContent("Trung bình");
//		Answer a3 = new Answer();
//		a3.setContent("Kém");
//		Set<Answer> lists = new HashSet<Answer>();
//		lists.add(a1);lists.add(a2);lists.add(a3);
//		dao.addSurvey(1, sv, lists);
		
//		dao.deleteSurvey(22);
//		dao.updateSurvey(sv, 20);
		//dao.updateAnswer(a1, 0, 21);
		sv = dao.findByID(20);
		Set<Answer> listAW = new HashSet<Answer>();
		System.out.println("SVID: " + sv.getId() + ", Title: " + sv.getTitle() + "NUMBER ASW: " + sv.getAns().size());
//		List<Survey> listSV = new ArrayList<Survey>();
//		listSV = dao.getListAll(1, 0, 10);
//		for (Survey suv : listSV) {
//			System.out.println("SVID: " + suv.getId() + ", Title: " + suv.getTitle() + "NUMBER ASW: " + suv.getAns().size());
			listAW = sv.getAns();
			for (Answer answer : listAW) {
				System.out.println(answer.getId() + ". " + answer.getContent());
			}
//		}
		
	}
}
