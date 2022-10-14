package com.admin;

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.*;

/**
 * Servlet implementation class AdminLogin
 */
@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String email = request.getParameter("email");
		String pass = request.getParameter("password");
		String vercode = request.getParameter("vercode");
		String captchaDB = null;
		String tokens = UUID.randomUUID().toString();
		Random random = new Random();
		int newRandomCaptcha = random.nextInt(9000) + 10000;
		HttpSession hs = request.getSession();

		try {
			ResultSet captchResultSet = DatabaseConnection.getResultFromSqlQuery("select * from tblcaptcha");
			if (captchResultSet.next()) {
				captchaDB = captchResultSet.getString(1);
			}
			if (captchaDB.equals(vercode)) {
				ResultSet resultset = DatabaseConnection.getResultFromSqlQuery("select * from tbladmin where email='" + email + "' AND upass='" + pass + "'");
				if (resultset.next()) {
					hs.setAttribute("uname", resultset.getString("uname"));
					response.sendRedirect("admin-dashboard.jsp");
				} else {
					String message = "You have enter wrong credentials";
					hs.setAttribute("credential", message);
					int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='" + newRandomCaptcha + "'");
					response.sendRedirect("admin-Login.jsp");
				}

			} else {
				String message = "You have enter invalid verification code";
				hs.setAttribute("verificationCode", message);
				int update = DatabaseConnection.insertUpdateFromSqlQuery("update tblcaptcha set captcha='" + newRandomCaptcha + "'");
				response.sendRedirect("admin-Login.jsp");
			}

		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
