package com.vendor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.sql.*;
import java.util.Random;
import java.util.UUID;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class VendorLogin
 */
@WebServlet("/VendorLogin")
public class VendorLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String vemail = request.getParameter("vemail");
		String vpass = request.getParameter("vpass");
		String vercode = request.getParameter("vercode");
		String captchaDB = null;
		try {
			String tokens = UUID.randomUUID().toString();
			Random random = new Random();
			int newRandomCaptcha = random.nextInt(9000) + 10000;
			HttpSession hs = request.getSession();
			Connection con = DatabaseConnection.getConnection();
			Statement st = con.createStatement();
			ResultSet captchResultSet = DatabaseConnection.getResultFromSqlQuery("select * from tblcaptcha");
			if (captchResultSet.next()) {
				captchaDB = captchResultSet.getString(1);
			}
			if (captchaDB.equals(vercode)) {
				ResultSet resultset = st.executeQuery("select vid,vname,vemail  from tblvendor where vemail='" + vemail+ "' and password='" + vpass + "'");
				if (resultset.next()) {
					hs.setAttribute("vid", resultset.getString("vid"));
					hs.setAttribute("vname", resultset.getString("vname"));
					hs.setAttribute("vemail", resultset.getString("vemail"));
					response.sendRedirect("vendor-dashboard.jsp");
				} else {
					String message = "You have enter wrong credentials";
					hs.setAttribute("credential", message);
					int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='" + newRandomCaptcha + "'");
					response.sendRedirect("vendor-Login.jsp");
				}
			} else {
				String message = "You have enter invalid verification code";
				hs.setAttribute("verificationCode", message);
				int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='" + newRandomCaptcha + "'");
				response.sendRedirect("vendor-Login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
