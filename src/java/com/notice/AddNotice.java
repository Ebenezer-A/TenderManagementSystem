package com.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddNotice
 */
@WebServlet("/AddNotice")
public class AddNotice extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int id = 0;
		String ntitle = request.getParameter("ntitle");
		String description = request.getParameter("description");
		try {
			int addNotice = DatabaseConnection.insertUpdateFromSqlQuery("insert into tblnotice(id,title,info)values('" + id + "','" + ntitle + "','" + description + "')");
			if (addNotice > 0) {
				response.sendRedirect("add-notice.jsp");
			} else {
				response.sendRedirect("add-notice.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
