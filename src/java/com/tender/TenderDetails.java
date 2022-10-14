package com.tender;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.connection.DatabaseConnection;

public class TenderDetails {
	public static String getTenderStatus(String tenderId) {
		String status = "Not Assigned";
		Connection con = DatabaseConnection.getConnection();
		PreparedStatement ps = null;
		ResultSet rs = null;
		try {
			ps = con.prepareStatement("select * from tbltenderstatus where tid=?");
			ps.setString(1, tenderId);
			rs = ps.executeQuery();
			if (rs.next()) {
				status = "Assigned"; // Tender Has been Assigned
			}

		} catch (SQLException e) {
			status = "Error: " + e.getMessage();
			e.printStackTrace();
		} 
		return status;
	}
}
