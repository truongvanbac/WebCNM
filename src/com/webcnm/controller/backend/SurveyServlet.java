package com.webcnm.controller.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.persistence.criteria.CriteriaBuilder.In;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.helper.StringHelper;
import com.webcnm.helper.Validation;
import com.webcnm.modal.Answer;
import com.webcnm.modal.Subject;
import com.webcnm.modal.Survey;
import com.webcnm.tranfer.SurveyTranfer;

/**
 * Servlet implementation class SurveyServlet
 */
public class SurveyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	SurveyTranfer dao;
	Validation validate;
	StringHelper h ;
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SurveyServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new SurveyTranfer();
        validate = new Validation();
        h = new StringHelper();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		 PrintWriter out = response.getWriter();
//	        response.setContentType("text/html");
//	        out.println("SIZE: " + lists.size());
	        
		HttpSession session = request.getSession();
		int id = (Integer) session.getAttribute("id");
		String action = request.getParameter("ref");
		
		if(action.equalsIgnoreCase("list")) {
			int page=1;
			int recordsPerPage = 5;
			
			if(request.getParameter("page") != null)
	            page = Integer.parseInt(request.getParameter("page"));
			
			List<Survey> lists = new ArrayList<Survey>();
			lists = dao.getListAll(id, (page-1) * recordsPerPage, recordsPerPage);
			int noOfRecords = dao.counAllRecord(id);
	        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			request.setAttribute("lists", lists);
			request.setAttribute("noOfPages", noOfPages);
	        request.setAttribute("currentPage", page);
	       
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/survey/list_surveys.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("add")) {
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/survey/add_survey.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("del")) {
			int sv_id = Integer.parseInt(request.getParameter("sv_id"));
			dao.deleteSurvey(sv_id);
			session.setAttribute("success", "Đã xóa thành công!!!");
			response.sendRedirect("survey?ref=list");
		} else if(action.equalsIgnoreCase("edit")) {
			int sv_id =  Integer.parseInt(request.getParameter("sv_id"));
			Survey oldSv = dao.findByID(sv_id);
			request.setAttribute("oldSv", oldSv);
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/survey/edit_survey.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();

		if (request.getParameterMap().containsKey("checkbox")) {
			String[] checkedBoxes = request.getParameterValues("checkbox");
			if (checkedBoxes.length == 1) {
				String id = h.arrayStringToString(checkedBoxes);
				if (request.getParameterMap().containsKey("delSv")) {
					response.sendRedirect("survey?ref=del&sv_id=" + id);
				} else if (request.getParameterMap().containsKey("editSv")) {
					response.sendRedirect("survey?ref=edit&sv_id=" + id);
				}
			} else {
				for (String stringID : checkedBoxes) {
					dao.deleteSurvey(Integer.parseInt(stringID));
				}
				session.setAttribute("success", "Đã xóa thành công!!!");
				response.sendRedirect("survey?ref=list");
			}
		} else {

			int tch_id = (Integer) session.getAttribute("id");

			Survey sv = new Survey();
			Set<Answer> setAns = new HashSet<Answer>();

			String sv_id = request.getParameter("sv_id");

			String title = request.getParameter("title");
			String ask = request.getParameter("content");
			String[] answers = request.getParameterValues("ans");

			sv.setTitle(title);
			sv.setAsk(ask);

			for (String ans : answers) {
				Answer an = new Answer();
				an.setContent(ans);
				setAns.add(an);
			}

			if (answers.length < 2) {
				session.setAttribute("error",
						"Vui lòng nhập ít nhất 2 câu trả lời");
			}

			if (sv_id == null || sv_id.isEmpty()) { // add
				if (!validate.checkRequired(title)) {
					session.setAttribute("error", "Vui lòng nhập tiêu đề");
					response.sendRedirect("survey?ref=add");
				} else if (!validate.checkRequired(ask)) {
					session.setAttribute("error", "Vui lòng nhập nội dung");
					response.sendRedirect("survey?ref=add");
				} else {
					dao.addSurvey(tch_id, sv, setAns);
					session.setAttribute("success", "Thêm thành công!");
					response.sendRedirect("survey?ref=list");
				}
			} else {
				if (!validate.checkRequired(title)) {
					session.setAttribute("error", "Vui lòng nhập tiêu đề");
					response.sendRedirect("survey?ref=edit&sv_id=" + sv_id);
				} else if (!validate.checkRequired(ask)) {
					session.setAttribute("error", "Vui lòng nhập nội dung");
					response.sendRedirect("survey?ref=edit&sv_id=" + sv_id);
				} else {
					int svid = Integer.parseInt(sv_id);
					Survey sv2 = new Survey();
					Set<Answer> setAns2 = new HashSet<Answer>();
					sv2 = dao.findByID(svid);
					setAns2 = sv2.getAns();

					for (Answer answer : setAns2) {
						dao.deleteAnswer(answer.getId());
					}

					Set<Answer> setAns3 = new HashSet<Answer>();

					for (String ans : answers) {
						Answer an = new Answer();
						an.setContent(ans);
						an.setId(0);
						setAns3.add(an);
					}

					dao.updateSurvey(sv, svid);

					for (Answer ans : setAns3) {
						dao.updateAnswer(ans, 0, svid);
					}
					session.setAttribute("success", "Sửa thành công!");
					response.sendRedirect("survey?ref=list");
				}
			}
		}
	}
}
