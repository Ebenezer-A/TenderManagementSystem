package com.tender;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.connection.DatabaseConnection;

/**
 * Servlet implementation class RejectTender
 */
@WebServlet("/RejectTender")
public class RejectTender extends HttpServlet {
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String tid=request.getParameter("tid");
		String bid=request.getParameter("bid");
		String vid=request.getParameter("vid");
		String status="Rejected";
		try {
			int rejectTender=DatabaseConnection.insertUpdateFromSqlQuery("update tblbidder set status='"+status+"' where bid='"+bid+"' and vid='"+vid+"' and tid='"+tid+"'");
			if(rejectTender>0) {
				response.sendRedirect("view-tender-bids-form.jsp?tid="+tid);
			}else {
				response.sendRedirect("view-tender-bids-form.jsp?tid="+tid);
			}
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}
