package com.webcnm.controller.backend;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import com.webcnm.helper.MD5Hash;
import com.webcnm.helper.Validation;
import com.webcnm.modal.Teacher;
import com.webcnm.tranfer.TeacherTranfer;

/**
 * Servlet implementation class TeacherServlet
 */
public class TeacherServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "D:/worlspaceWeb/WebCNM/WebContent/uploads";
    
	TeacherTranfer dao;
	Validation validate;
	MD5Hash encr;
    /**
     * @see HttpServlet#HttpServlet()
     */
    public TeacherServlet() {
        super();
        // TODO Auto-generated constructor stub
        dao = new TeacherTranfer();
        validate = new Validation();
        encr = new MD5Hash();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String action = request.getParameter("ref");
		if(action.equalsIgnoreCase("profile")) {
			HttpSession session = request.getSession();
			int tch_id = (Integer) session.getAttribute("id");
			Teacher tch = dao.findByID(tch_id);
			request.setAttribute("teacher", tch);
			RequestDispatcher rd = request.getRequestDispatcher("/view/backend/admin/update_profile.jsp");
			rd.forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
//		PrintWriter out = response.getWriter();
//		response.setContentType("text/html");
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		boolean isMultipart = ServletFileUpload.isMultipartContent(request);
		
		HttpSession session = request.getSession();
		int tch_id = (Integer) session.getAttribute("id");
	
		
		String [] fields = {"fullname", "regency", "mobile", "phone_com", "add_home", "add_com"};
		String [] values = new String[6];
		String avatar = null;
		
		if (isMultipart) {
			// Create a factory for disk-based file items
			FileItemFactory factory = new DiskFileItemFactory();

			// Create a new file upload handler
			ServletFileUpload upload = new ServletFileUpload(factory);
			try {
				// Parse the request
				List<FileItem> multiparts = upload.parseRequest(request);

				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						String name = new File(item.getName()).getName();
						avatar = name;
						item.write(new File(UPLOAD_DIRECTORY + File.separator
								+ name));
					} else {
						String fieldName = item.getFieldName();
						String fieldValue = item.getString("UTF-8").trim();
						
						for(int i = 0; i < fields.length; i++) {
							if(fields[i].equalsIgnoreCase(fieldName)) {
								values[i] = fieldValue;
							}
						}
					}
				}
			} catch (Exception e) {}
		}
	
		Teacher oldTeacher = dao.findByID(tch_id);
//		out.println("AVATAR: " + oldTeacher.getAvatar());
		
		Teacher tchN = new Teacher();
		tchN.setFullname(values[0]);
		tchN.setRegency(values[1]);
		tchN.setMobile_number(values[2]);
		tchN.setPhone_com(values[3]);
		tchN.setAdd_home(values[4]);
		tchN.setAdd_com(values[5]);
		
		if((avatar != null) && (avatar != "")) {
			tchN.setAvatar(avatar);
		} else {
			tchN.setAvatar(oldTeacher.getAvatar());
		}
		
		dao.updateProfile(tchN, tch_id);
		session.setAttribute("success", "Cập nhật thành công!!!");
		response.sendRedirect("index");
		
//		if(fullname == null || fullname.isEmpty()) {
//			session.setAttribute("error", "Vui lòng nhập họ tên");
//			response.sendRedirect("teacher?ref=profile");
//		} else {
//			dao.updateProfile(tchN, tch_id);
//			session.setAttribute("success", "Cập nhật thành công!!!");
//			response.sendRedirect("index");
//		}
//		if(avatar != null ) {
//			uploadFile(request, response);
//		}
	}
}
