package com.vendor;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class VendorChangePassword
 */
@WebServlet("/VendorChangePassword")
public class VendorChangePassword extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String cpassword = request.getParameter("cpassword");
		String password = request.getParameter("password");
		String confpass = request.getParameter("confpass");
		String pass = "";
		HttpSession session = request.getSession();
		try {
			Connection con = DatabaseConnection.getConnection();
			Statement statement = con.createStatement();
			ResultSet resultset = statement.executeQuery("select password from tblvendor where password='" + cpassword+ "' and vid='" + session.getAttribute("vid") + "'");
			if (resultset.next()) {
				pass = resultset.getString(1);
			}
			if (password.equals(confpass)) {
				if (pass.equals(cpassword)) {
					int i = statement.executeUpdate("update tblvendor set password='" + password + "' where vid='" + session.getAttribute("vid") + "' ");
					response.sendRedirect("vendor-change-password.jsp");
				} else {
					response.sendRedirect("vendor-change-password.jsp");
				}
			} else {
				response.sendRedirect("vendor-change-password.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
