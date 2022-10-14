package com.notice;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class UpdateNotice
 */
@WebServlet("/UpdateNotice")
public class UpdateNotice extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int noticeId = Integer.parseInt(request.getParameter("noticeId"));
		String noticeTitle = request.getParameter("ntitle");
		String noticeDescription = request.getParameter("description");
		try {
			int updateNotice = DatabaseConnection.insertUpdateFromSqlQuery("update tblnotice set title='" + noticeTitle+ "',info='" + noticeDescription + "' where id='" + noticeId + "'");
			if (updateNotice > 0) {
				response.sendRedirect("edit-notice.jsp");
			} else {
				response.sendRedirect("edit-notice.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
