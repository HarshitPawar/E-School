package com.bootnxt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/enable_disable")
public class enable_disable extends HttpServlet {
    private static final long serialVersionUID = 1L;

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String dbUrl = "jdbc:mysql://localhost:3306/record?useSSL=false";
        String dbUser = "root";
        String dbPassword = "";
        
        try {
            Class.forName("com.mysql.jdbc.Driver");
            Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
            
            if (conn != null) {
                String username = request.getParameter("username");
                String password = request.getParameter("password");
                String status = request.getParameter("status");
                
                String sql = "UPDATE staff SET Status = ? WHERE Username = ? AND Password = ?";
                PreparedStatement stmt = conn.prepareStatement(sql);
                stmt.setString(1, status);
                stmt.setString(2, username);
                stmt.setString(3, password);
                
                int rowsUpdated = stmt.executeUpdate();
                if (rowsUpdated > 0) {
                    request.setAttribute("enable_status", "success");
                } else {   
                    request.setAttribute("enable_status", "failed");
                }
                stmt.close();
                conn.close();
            } else {
                request.setAttribute("error", "Failed to connect to the database.");
            }
            request.getRequestDispatcher("admin.jsp").forward(request, response);
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "Database error: " + e.getMessage());
        }

    }
}
