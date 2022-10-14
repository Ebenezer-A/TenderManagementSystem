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
 * Servlet implementation class VendorRegister
 */
@WebServlet("/VendorRegister")
public class VendorRegister extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String vid = DatabaseConnection.generateVendorId();
		String vname = request.getParameter("vname");
		String vemail = request.getParameter("vemail");
		String vmobile = request.getParameter("vmobile");
		String vcompany = request.getParameter("vcompany");
		String vaddress = request.getParameter("vaddress");
		String vpassword = request.getParameter("vpassword");
		HttpSession hs = request.getSession();
		try {
			int vendor = DatabaseConnection.insertUpdateFromSqlQuery(
					"insert into tblvendor(vid,password,vname,vmob,vemail,company,address)values('" + vid + "','"
							+ vpassword + "','" + vname + "','" + vmobile + "','" + vemail + "','" + vcompany + "','"
							+ vaddress + "')");
			if (vendor > 0) {
				String message = "Account Created Sucessfully";
				hs.setAttribute("credential", message);
				hs.setAttribute("vid", vid);
				response.sendRedirect("vendor-register.jsp");
			} else {
				response.sendRedirect("vendor-register.jsp");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

}
