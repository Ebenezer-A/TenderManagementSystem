package com.contact;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class AddContact
 */
@WebServlet("/AddContact")
public class AddContact extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		int contactId = 0;
		String name = request.getParameter("name");
		String email = request.getParameter("email");
		String message = request.getParameter("message");
		try {
			int addContact = DatabaseConnection
					.insertUpdateFromSqlQuery("insert into tblcontact(cid,name,email,message)values('" + contactId
							+ "','" + name + "','" + email + "','" + message + "')");
			if (addContact > 0) {
				response.sendRedirect("contact.jsp");
			} else {
				response.sendRedirect("contact.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
