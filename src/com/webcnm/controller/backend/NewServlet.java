package com.webcnm.controller.backend;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.helper.StringHelper;
import com.webcnm.helper.Validation;
import com.webcnm.modal.New;
import com.webcnm.modal.Subject;
import com.webcnm.tranfer.NewTranfer;

/**
 * Servlet implementation class NewServlet
 */
public class NewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	NewTranfer dao;
	Validation validate;
	StringHelper h;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new NewTranfer();
        validate = new Validation();
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
			
			List<New> lists = dao.getListAll(id, (page-1) * recordsPerPage, recordsPerPage);
			int noOfRecords = dao.counAllRecord(id);
	        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			request.setAttribute("listNews", lists);
			request.setAttribute("noOfPages", noOfPages);
	        request.setAttribute("currentPage", page);
			
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/new/list_news.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("add")) {
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/new/add_new.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("del")) {
			String Sid = request.getParameter("nid");
			dao.deleteNew(Integer.parseInt(Sid));
			session.setAttribute("success", "Đã xóa thành công!!!");
			response.sendRedirect("new?ref=list");
		} else if(action.equalsIgnoreCase("edit")) {
			String nid =  request.getParameter("nid");
			New oldSj = dao.findByID(Integer.parseInt(nid));
			request.setAttribute("oldSj", oldSj);
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/new/edit_new.jsp");
			rd.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		if(request.getParameterMap().containsKey("checkbox")) {
			String [] checkedBoxes = request.getParameterValues("checkbox");
			if(checkedBoxes.length == 1) {
				String id = h.arrayStringToString(checkedBoxes);
				if(request.getParameterMap().containsKey("delNew")) {
					response.sendRedirect("new?ref=del&nid=" + id);
				} else if(request.getParameterMap().containsKey("editNew")) {
					response.sendRedirect("new?ref=edit&nid=" + id);
				}
			} else {
				for (String stringID : checkedBoxes) {
					dao.deleteNew(Integer.parseInt(stringID));
				}
				session.setAttribute("success", "Đã xóa thành công!!!");
				response.sendRedirect("new?ref=list");
			}
		} else {
			
			New sj = new New();

			String title = request.getParameter("title");
			String content = request.getParameter("ckeditor");

			int tch_id = (Integer) session.getAttribute("id");

			sj.setTitle(title);
			sj.setContent(content);

			String nid = request.getParameter("nid");

			if (nid == null || nid.isEmpty()) {
				if (!validate.checkRequired(title)) {
					session.setAttribute("error", "Vui lòng nhập tiêu đề");
					request.setAttribute("oldSj", sj);
					RequestDispatcher rd = request.getRequestDispatcher("/view/backend/new/add_new.jsp");
					rd.forward(request, response);
				} else if (!validate.checkRequired(content)) {
					session.setAttribute("error", "Vui lòng nhập nội dung");
					request.setAttribute("oldSj", sj);
					RequestDispatcher rd = request.getRequestDispatcher("/view/backend/new/add_new.jsp");
					rd.forward(request, response);
				} else {
					dao.addNew(tch_id, sj);
					session.setAttribute("success",
							"Bạn đã thêm môn học thành công!!!");
					response.sendRedirect("new?ref=list");
				}
			} else {
				if (!validate.checkRequired(title)) {
					session.setAttribute("error", "Vui lòng nhập tiêu đề");
					response.sendRedirect("new?ref=edit&nid=" + nid);
				} else if (!validate.checkRequired(content)) {
					session.setAttribute("error", "Vui lòng nhập nội dung");
					response.sendRedirect("new?ref=edit&nid=" + nid);
				} else {
					dao.updateNew(sj, Integer.parseInt(nid));
					session.setAttribute("success", "Bạn đã sửa thành công!!!");
					response.sendRedirect("new?ref=list");
				}
			}
		}
	}

}
