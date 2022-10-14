package com.tender;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class BidForTender
 */
@WebServlet("/BidForTender")
public class BidForTender extends HttpServlet {
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession hs=request.getSession();
		String bid = DatabaseConnection.generateBidderId();
		String vid=(String) hs.getAttribute("vid");
		String tid=request.getParameter("tenderId");
		int bidAmount=Integer.parseInt(request.getParameter("bidAmount"));
		String deadLine=request.getParameter("strictDeadline");
		String status="Pending";
		try {
			int bidTender=DatabaseConnection.insertUpdateFromSqlQuery("insert into tblbidder(bid,vid,tid,bidamount,deadline,status)values('"+bid+"','"+vid+"','"+tid+"','"+bidAmount+"','"+deadLine+"','"+status+"')");
			if(bidTender>0) {
				response.sendRedirect("bidForTender.jsp");
			}else {
				response.sendRedirect("bidForTender.jsp");
			}
		}catch(Exception e) {
			e.printStackTrace();
		}
	}

}
