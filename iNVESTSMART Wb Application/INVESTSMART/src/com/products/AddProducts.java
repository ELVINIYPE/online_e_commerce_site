package com.products;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.tomcat.util.http.fileupload.FileItem;
import org.apache.tomcat.util.http.fileupload.RequestContext;
import org.apache.tomcat.util.http.fileupload.disk.DiskFileItemFactory;
import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddProducts
 */
@WebServlet("/AddProducts")
public class AddProducts extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private final String UPLOAD_DIRECTORY = "F:/Java-Programming-All-Work/All Webbased Programs/ShoppingCartApplication/WebContent/uploads/";
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		HttpSession session = request.getSession();
		if (ServletFileUpload.isMultipartContent(request)) {
			try {
				List<FileItem> multiparts = new ServletFileUpload(new DiskFileItemFactory()).parseRequest((RequestContext) request);
				String imageName=null;
				String productName = null;
				String productQuantity = null;
				String productPrice = null;
				
				for (FileItem item : multiparts) {
					if (!item.isFormField()) {
						imageName = new File(item.getName()).getName();
						item.write(new File(UPLOAD_DIRECTORY + File.separator + imageName));
						FileItem pName = (FileItem) multiparts.get(0);
						productName = pName.getString();
						FileItem quantity = (FileItem) multiparts.get(1);
						productQuantity = quantity.getString();
						FileItem price = (FileItem) multiparts.get(2);
						productPrice = price.getString();	
					}
				}
				try {
					int id = 0;
					String imagePath = UPLOAD_DIRECTORY + imageName;
					int i = DatabaseConnection.insertUpdateFromSqlQuery("insert into products values('" + id+ "','" + productName + "','" + productQuantity + "','" + productPrice + "','" + imageName + "','" + imagePath + "')");
					if (i > 0) {
						String success = "Logo Uploaded Successfully.";
						session.setAttribute("message", success);
						response.sendRedirect("add-products.jsp");
					}

				} catch (Exception e) {
					e.printStackTrace();
				}
			} catch (Exception ex) {
				request.setAttribute("message", "File Upload Failed due to " + ex);
			}

		} else {
			request.setAttribute("message", "Sorry this Servlet only handles file upload request");
		}
	}
}
