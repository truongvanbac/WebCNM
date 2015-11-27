package com.webcnm.controller.frontend;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webcnm.modal.New;
import com.webcnm.modal.Subject;
import com.webcnm.modal.Survey;
import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.NewTranfer;
import com.webcnm.tranfer.SubjectTranfer;
import com.webcnm.tranfer.SurveyTranfer;
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class MainServlet
 */
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	TeacherTranfer daoT;
	NewTranfer daoN;
	SubjectTranfer daoSj;
	SurveyTranfer daoSv;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
        daoN = new NewTranfer();
        daoT = new TeacherTranfer();
        daoSj = new SubjectTranfer();
        daoSv = new SurveyTranfer();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		
		String admin = request.getParameter("unam");
		Teacher tch = daoT.findByUsername(admin);
		int tch_id = tch.getId();
		
		
		List<New> listNews = daoN.getNewest(tch_id, 0, 5);
		List<Subject> listsSj = daoSj.getListAll(tch_id, 0, 20);
		List<Survey> listsSv = daoSv.getListNewestSurvey(tch_id, 0, 5);
		request.setAttribute("teacher", tch);
		request.setAttribute("listNews", listNews);
		request.setAttribute("listSj", listsSj);
		request.setAttribute("listSv", listsSv);
		request.setAttribute("admin", admin);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/frontend/index.jsp");
		rd.forward(request, response);
	}

}
