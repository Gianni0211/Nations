package it.objectmethods.esercizio.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Service;

import it.objectmethods.esercizio.model.Country;

@Service
public class IDaoCountriesImpl implements IDaoCountries {

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
	public List<Country> getCountriesByContinent(String continent) {

		Connection conn = getConnection();
		List<Country> list = new ArrayList<Country>();
		String sql = "SELECT *  FROM country  WHERE Continent = ?;";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);
			stmt.setString(1, continent);

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Country country = new Country();
				country.setName(rs.getString("Name"));
				country.setCode(rs.getString("Code"));
				country.setContinent(rs.getString("Continent"));
				country.setPopulation(rs.getLong("Population"));
				country.setRegion(rs.getString("Region"));
				list.add(country);
			}
			rs.close();
			stmt.close();
			conn.close();

		} catch (SQLException e) {
			e.printStackTrace();
		}
		return list;
	}

	@Override
	public List<Country> getAllCountries() {

		Connection conn = getConnection();
		List<Country> list = new ArrayList<Country>();
		String sql = "SELECT *  FROM country";

		try {
			PreparedStatement stmt = conn.prepareStatement(sql);

			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Country country = new Country();
				country.setName(rs.getString("Name"));
				country.setCode(rs.getString("Code"));
				country.setContinent(rs.getString("Continent"));
				country.setPopulation(rs.getLong("Population"));
				country.setRegion(rs.getString("Region"));
				list.add(country);
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
