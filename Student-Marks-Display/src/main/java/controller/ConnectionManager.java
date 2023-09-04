package controller;



import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class ConnectionManager {
    private static final String JDBC_URL = "jdbc:mysql://localhost:3306/demo";
    private static final String JDBC_USERNAME = "root";
    private static final String JDBC_PASSWORD = "#888tafeta888#";

    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch (ClassNotFoundException e) {
            throw new SQLException("MySQL JDBC driver not found.");
        }

        return DriverManager.getConnection("jdbc:mysql://localhost:3306/demo", "root", "#888tafeta888#");
    }

    public static void insertStudentMarks(StudentMarks studentMarks) {
        try (Connection connection = getConnection()) {
            String insertQuery = "INSERT INTO studentMarks (name, regNo, tamil, english, maths, science, history) VALUES (?, ?, ?, ?, ?, ?, ?)";
            try (PreparedStatement preparedStatement = connection.prepareStatement(insertQuery)) {
                preparedStatement.setString(1, studentMarks.getName());
                preparedStatement.setString(2, studentMarks.getRegNo());
                preparedStatement.setInt(3, studentMarks.getTamil());
                preparedStatement.setInt(4, studentMarks.getEnglish());
                preparedStatement.setInt(5, studentMarks.getMaths());
                preparedStatement.setInt(6, studentMarks.getScience());
                preparedStatement.setInt(7, studentMarks.getHistory());
                
                preparedStatement.executeUpdate();
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

}
