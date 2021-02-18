package it.objectmethods.esercizio.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

@Service
public class IDaoContinentsImpl  implements IDaoContinents{
	
	private Connection getConnection() {
		Connection conn = null;

		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection("jdbc:mysql://localhost:8081/world", "omdev", "omdev");
		} catch (Exception e) {
			e.printStackTrace();
		}

		return conn;
	}

	@Override
	public List<String> getAllContinents() {
		Connection conn = getConnection();
		List<String> list = new ArrayList<String>();
		String sql = "SELECT DISTINCT ct.Continent FROM country AS ct";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				list.add(rs.getString("Continent"));
			}
			rs.close();
			stmt.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return list;
	}

}
