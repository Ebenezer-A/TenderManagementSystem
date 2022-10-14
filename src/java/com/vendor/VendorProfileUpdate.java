package com.vendor;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class VendorProfileUpdate
 */
@WebServlet("/VendorProfileUpdate")
public class VendorProfileUpdate extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String vname = request.getParameter("vname");
		String vemail = request.getParameter("vemail");
		String vmobile = request.getParameter("vmobile");
		String vcompany = request.getParameter("vcompany");
		String vaddress = request.getParameter("vaddress");
		HttpSession hs = request.getSession();
		try {
			int updateProfile = DatabaseConnection.insertUpdateFromSqlQuery("update tblvendor set vname='" + vname
					+ "',vmob='" + vmobile + "',vemail='" + vemail + "',company='" + vcompany + "',address='" + vaddress
					+ "' where vid='" + hs.getAttribute("vid") + "'");
			if (updateProfile > 0) {
				response.sendRedirect("vendor-profile-update.jsp");
			} else {
				response.sendRedirect("vendor-profile-update.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
