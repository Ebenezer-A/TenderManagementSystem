package com.tender;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class CreateTender
 */
@WebServlet("/CreateTender")
public class CreateTender extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String tid = DatabaseConnection.generateTenderId();
		String tenderName = request.getParameter("tenderName");
		String tenderType = request.getParameter("tenderType");
		int basePrice = Integer.parseInt(request.getParameter("basePrice"));
		String strictDeadline = request.getParameter("strictDeadline");
		String location = request.getParameter("location");
		String description = request.getParameter("description");

		try {
			int tender = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tbltender(tid,tname,ttype,tprice,tdesc,tdeadline,tloc)values('" + tid + "','"
							+ tenderName + "','" + tenderType + "','" + basePrice + "','" + description + "','"
							+ strictDeadline + "','" + location + "')");
			if (tender > 0) {
				response.sendRedirect("create-new-tender.jsp");
			} else {
				response.sendRedirect("create-new-tender.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
