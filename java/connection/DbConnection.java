package connection;

import java.sql.Connection;
import java.sql.DriverManager;

public class DbConnection {
	public static Connection connectionmethod() {
		Connection connection  = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			connection =  DriverManager.getConnection("jdbc:mysql://localhost:3308/project", "root","");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return connection;
	}
}
