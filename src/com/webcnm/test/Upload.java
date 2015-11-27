package com.webcnm.test;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemFactory;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

/**
 * Servlet implementation class Upload
 */
@WebServlet("/upload")
public class Upload extends HttpServlet {

	private static final long serialVersionUID = 1L;
    private final String UPLOAD_DIRECTORY = "D:/worlspaceWeb/WebCNM/WebContent/uploads";

    protected void doPost(HttpServletRequest request,
            HttpServletResponse response) throws ServletException, IOException {
    boolean isMultipart = ServletFileUpload.isMultipartContent(request);

    // process only if its multipart content
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
               item.write(new File(UPLOAD_DIRECTORY + File.separator + name));
               }
            }
                    
            // File uploaded successfully
            request.setAttribute("message", "Your file has been uploaded!");
            } 
            catch (Exception e) 
            {
             request.setAttribute("message", "File Upload Failed due to " + e);
            }
    } else 
    {
    request.setAttribute("message", "This Servlet only handles file upload request");
    }
    request.getRequestDispatcher("/result.jsp").forward(request, response);
}
}
