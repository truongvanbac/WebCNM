package com.webcnm.controller.frontend;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.modal.New;
import com.webcnm.modal.Subject;
import com.webcnm.modal.Survey;
import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.NewTranfer;
import com.webcnm.tranfer.SubjectTranfer;
import com.webcnm.tranfer.SurveyTranfer;
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class SurveyServlet
 */
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	TeacherTranfer daoT;
	NewTranfer daoN;
	SubjectTranfer daoSj;
	SurveyTranfer daoSv;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SurveyServlet() {
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
		int sv_id = Integer.parseInt(request.getParameter("sv_id"));
		
		List<New> listNews = daoN.getNewest(tch_id, 0, 5);
		List<Subject> listsSj = daoSj.getListAll(tch_id, 0, 20);
		List<Survey> listsSv = daoSv.getListNewestSurvey(tch_id, 0, 5);
		Survey currentSv = daoSv.findByID(sv_id);
		request.setAttribute("teacher", tch);
		request.setAttribute("listNews", listNews);
		request.setAttribute("listSj", listsSj);
		request.setAttribute("listSv", listsSv);
		request.setAttribute("currentSv", currentSv);
		request.setAttribute("admin", admin);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/frontend/survey_detail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String answer = request.getParameter("ans");
		int sv_id = Integer.parseInt(request.getParameter("sv_id"));
		String admin = request.getParameter("admin");
		if(answer != null && !answer.isEmpty()) {
			daoSv.updateNumberSelectedAnswer(Integer.parseInt(answer));
			session.setAttribute("success", "Cảm ơn bạn đã trả lời khảo sát!");
			response.sendRedirect("home?unam=" + admin);
		} else {
			session.setAttribute("error", "Vui lòng chọn câu trả lời!");
			response.sendRedirect("survey?unam=" + admin + "&sv_id=" + sv_id);
		}
		
	}

}
