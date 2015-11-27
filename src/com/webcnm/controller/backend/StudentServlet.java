package com.webcnm.controller.backend;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.modal.Student;
import com.webcnm.tranfer.StudentTranfer;

/**
 * Servlet implementation class StudentServlet
 */
@WebServlet("/StudentServlet")
public class StudentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	StudentTranfer dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new StudentTranfer();
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
			
			List<Student> lists = dao.getListAll(id, (page-1) * recordsPerPage, recordsPerPage);
			int noOfRecords = dao.counAllRecord(id);
	        int noOfPages = (int) Math.ceil(noOfRecords * 1.0 / recordsPerPage);
			request.setAttribute("listStudents", lists);
			request.setAttribute("noOfPages", noOfPages);
	        request.setAttribute("currentPage", page);
	        
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/student/list_students.jsp");
			rd.forward(request, response);
		} else if(action.equalsIgnoreCase("del")) {
			String Sid = request.getParameter("st_id");
			dao.deleteStudent(Integer.parseInt(Sid));
			session.setAttribute("success", "Đã xóa thành công!!!");
			response.sendRedirect("student?ref=list");
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
			for (String stringID : checkedBoxes) {
				dao.deleteStudent(Integer.parseInt(stringID));
			}
			session.setAttribute("success", "Đã xóa thành công!!!");
			response.sendRedirect("student?ref=list");
		}

	}
	
}
