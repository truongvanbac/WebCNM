package com.webcnm.controller.backend;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class MainServelet
 */
public class MainServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	TeacherTranfer dao;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MainServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new TeacherTranfer();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession();
		int tch_id = (Integer) session.getAttribute("id"); 
		Teacher tch = dao.findByID(tch_id);
		request.setAttribute("teacher", tch);
		RequestDispatcher rd = request.getRequestDispatcher("/view/backend/index.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
//	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		// TODO Auto-generated method stub
//		
//	}

}
