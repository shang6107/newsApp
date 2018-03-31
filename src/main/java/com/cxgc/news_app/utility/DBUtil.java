package com.cxgc.news_app.utility;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Properties;

public class DBUtil {

	private static String url;
	private static String user;
	private static String password;
	private static String driver;

	private DBUtil() {
	}

	private static  DBUtil instance = null ;

	public static DBUtil getInstance() {
		if(instance ==null) {
			instance = new DBUtil();
		}
		return instance;
	}

	static {
		Properties prop = new Properties();
		InputStream in = DBUtil.class.getClassLoader().
				getResourceAsStream("/conf/jdbc.properties");
		try {
			Class.forName("com.mysql.jdbc.Driver");
			prop.load(in);
		} catch (Exception e) {
			e.printStackTrace();
		}
		url = prop.getProperty("jdbc.url");
		user = prop.getProperty("jdbc.username");
		password = prop.getProperty("jdbc.password");
		driver = prop.getProperty("jdbc.driver");
	}

	public Connection getConn() {
		try {
			return DriverManager.getConnection(url, user, password);
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}

	public static void closeSourse(Connection conn, PreparedStatement ps, ResultSet rs) {
		try {
			if (conn != null && (!conn.isClosed())) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (ps != null && (!ps.isClosed())) {
				ps.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		try {
			if (rs != null && (!rs.isClosed())) {
				rs.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

}
