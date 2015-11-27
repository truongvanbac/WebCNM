package com.webcnm.controller.frontend;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.webcnm.modal.New;
import com.webcnm.modal.Subject;
import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.NewTranfer;
import com.webcnm.tranfer.SubjectTranfer;
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class SubjectServlet
 */
public class SubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NewTranfer daoN;
	TeacherTranfer daoT;
	SubjectTranfer daoSj;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubjectServlet() {
        super();
        // TODO Auto-generated constructor stub
        daoN = new NewTranfer();
        daoT = new TeacherTranfer();
        daoSj = new SubjectTranfer();
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
		int sj_id = Integer.parseInt(request.getParameter("sj_id"));
		
		List<New> listNews = daoN.getNewest(tch_id, 0, 5);
		Subject currentSj = daoSj.findByID(sj_id);
		request.setAttribute("teacher", tch);
		request.setAttribute("listNews", listNews);
		request.setAttribute("admin", admin);
		request.setAttribute("currentSj", currentSj);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/frontend/subject_detail.jsp");
		rd.forward(request, response);
	}

}
