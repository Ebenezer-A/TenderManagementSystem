<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.connection.*"%>
<%@ page import="java.sql.*"%>

<%
	int noticeId = Integer.parseInt(request.getParameter("id"));
	int removeNotice = DatabaseConnection.insertUpdateFromSqlQuery("delete from tblnotice where id='" + noticeId + "'");
	if (removeNotice > 0) {
		response.sendRedirect("remove-notice.jsp");
	} else {
		response.sendRedirect("remove-notice.jsp");
	}
%>