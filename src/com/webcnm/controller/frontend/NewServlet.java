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
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class NewServlet
 */
@WebServlet("/NewServlet")
public class NewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	NewTranfer daoN;
	TeacherTranfer daoT;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public NewServlet() {
        super();
        // TODO Auto-generated constructor stub
        daoN = new NewTranfer();
        daoT = new TeacherTranfer();
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
		
		
		
		int nid = Integer.parseInt(request.getParameter("nid"));
		New currentNew = daoN.findByID(nid);
		List<New> listPosts = daoN.getOldPost(tch_id, nid, 0, 10);
		
		request.setAttribute("teacher", tch);
		request.setAttribute("listNews", listNews);
		request.setAttribute("currentNew", currentNew);
		request.setAttribute("oldPosts", listPosts);
		request.setAttribute("admin", admin);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/frontend/new_detail.jsp");
		rd.forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
