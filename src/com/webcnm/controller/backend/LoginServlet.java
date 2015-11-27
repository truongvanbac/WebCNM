package com.webcnm.controller.backend;

import java.io.IOException;
import java.security.NoSuchAlgorithmException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class LoginServlet
 */
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VIEW = "/view/backend/login.jsp";
	TeacherTranfer dao;
	Teacher tch;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginServlet() {
		super();
		// TODO Auto-generated constructor stub
		dao = new TeacherTranfer();
		tch = new Teacher();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		boolean checkLogin = false;
		try {
			checkLogin = dao.login(username, pass);
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if (checkLogin) {
			tch = dao.findByUsername(username);
			HttpSession session = request.getSession();
			session.setAttribute("username", username);
			session.setAttribute("id", tch.getId());
			session.setAttribute("success", "Đăng nhập thành công!");
			response.sendRedirect("index");
		} else {
			HttpSession session = request.getSession();
			session.setAttribute("error", "TàI khoản không tồn tại");
			RequestDispatcher rd = request.getRequestDispatcher(VIEW);
			rd.forward(request, response);
		}
	}

	protected void doGet(HttpServletRequest request,
		HttpServletResponse response) throws ServletException, IOException {
		RequestDispatcher rd = request.getRequestDispatcher(VIEW);
		rd.forward(request, response);
	}

}
