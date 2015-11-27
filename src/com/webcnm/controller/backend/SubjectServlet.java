package com.webcnm.controller.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Enumeration;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.helper.StringHelper;
import com.webcnm.helper.StripTag;
import com.webcnm.helper.Validation;
import com.webcnm.modal.Subject;
import com.webcnm.tranfer.SubjectTranfer;

/**
 * Servlet implementation class SubjectServlet
 */
@WebServlet("/SubjectServlet")
public class SubjectServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
    SubjectTranfer dao;
    Validation validate;
    StripTag html;
    StringHelper h;
    
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubjectServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new SubjectTranfer();
        validate = new Validation();
        html = new StripTag();
        h = new StringHelper();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int id = (Integer) session.getAttribute("id");
		String action = request.getParameter("ref");
		
		if(action.equalsIgnoreCase("list")) {
			int page=1;
			int recordsPerPage = 5;
			
			if(request.getParameter("page") != null)
	            page = Integer.parseInt(request.getParameter("page"));
			
			List<Subject> lists = dao.getListAll(id, (page-1) * recordsPerPage, recordsPerPage);
			int noOfRecords = dao.counAllRecord(id);
	        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			request.setAttribute("listSubjects", lists);
			request.setAttribute("noOfPages", noOfPages);
	        request.setAttribute("currentPage", page);
	        
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/subject/list_subjects.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("add")) {
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/subject/add_subject.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("del")) {
			String Sid = request.getParameter("Sid");
			dao.deleteSubject(Integer.parseInt(Sid));
			session.setAttribute("success", "Đã xóa thành công!!!");
			response.sendRedirect("subject?ref=list");
		} else if(action.equalsIgnoreCase("edit")) {
			String sj_id =  request.getParameter("Sid");
			Subject oldSj = dao.findByID(Integer.parseInt(sj_id));
			request.setAttribute("oldSj", oldSj);
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/subject/edit_subject.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		request.setCharacterEncoding("UTF-8");

		if (request.getParameterMap().containsKey("checkbox")) {
			String[] checkedBoxes = request.getParameterValues("checkbox");
			if (checkedBoxes.length == 1) {
				String id = h.arrayStringToString(checkedBoxes);
				if (request.getParameterMap().containsKey("delSj")) {
					response.sendRedirect("subject?ref=del&Sid=" + id);
				} else if (request.getParameterMap().containsKey("editSj")) {
					response.sendRedirect("subject?ref=edit&Sid=" + id);
				}
			} else {
				for (String stringID : checkedBoxes) {
					dao.deleteSubject(Integer.parseInt(stringID));
				}
				session.setAttribute("success", "Đã xóa thành công!!!");
				response.sendRedirect("subject?ref=list");
			}
		} else {

			Subject sj = new Subject();

			String nameSj = request.getParameter("name");
			String sumary = request.getParameter("ckeditor");

			int tch_id = (Integer) session.getAttribute("id");

			sj.setName(nameSj);
			sj.setSumary(sumary);

			String Sid = request.getParameter("Sid");

			if (Sid == null || Sid.isEmpty()) {
				if (!validate.checkRequired(nameSj)) {
					session.setAttribute("error", "Vui lòng nhập tên môn học");
					response.sendRedirect("subject?ref=add");
				} else if (!validate.checkRequired(sumary)) {
					session.setAttribute("error",
							"Vui lòng nhập nội dung môn học");
					response.sendRedirect("subject?ref=add");
				} else {
					dao.addSubject(tch_id, sj);
					session.setAttribute("success",
							"Bạn đã thêm môn học thành công!!!");
					response.sendRedirect("subject?ref=list");
				}
			} else {
				if (!validate.checkRequired(nameSj)) {
					session.setAttribute("error", "Vui lòng nhập tên môn học");
					response.sendRedirect("subject?ref=edit&Sid=" + Sid);
				} else if (!validate.checkRequired(sumary)) {
					session.setAttribute("error",
							"Vui lòng nhập nội dung môn học");
					response.sendRedirect("subject?ref=edit&Sid=" + Sid);
				} else {
					dao.updateSubject(sj, Integer.parseInt(Sid));
					session.setAttribute("success", "Bạn đã sửa thành công!!!");
					response.sendRedirect("subject?ref=list");
				}
			}

		}
	}
}
