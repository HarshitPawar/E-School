package com.bootnxt;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/login")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String Username = request.getParameter("username");
		String Password = request.getParameter("password");
		String Role = request.getParameter("role");
		HttpSession session = request.getSession();
		RequestDispatcher dispatcher = null;
		
		
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record?useSSL=false", "root", "" );
			PreparedStatement pst = con.prepareStatement("select * from staff where Username = ? and Password = ? and Role = ?");
			pst.setString(1, Username);
			pst.setString(2, Password);
			pst.setString(3, Role);
	
			ResultSet rs = pst.executeQuery();
			 if (rs.next()) {
	                // Authentication successful
	                String userStatus = rs.getString("Status");

	                if ("Enable".equals(userStatus)) {

	                    if ("admin".equals(Role)) {
	                    	dispatcher = request.getRequestDispatcher("admin.jsp");
	                    } else if ("teacher".equals(Role)) {
	                    	dispatcher = request.getRequestDispatcher("teacher.jsp");
	                    } else if ("student".equals(Role)) {
	                    	dispatcher = request.getRequestDispatcher("student.jsp");
	                    } 
	                    else {
	                        response.getWriter().println("<p>Invalid role.</p>");
	                    }
	                } else {
	                    // User's status is "Disabled"
	                    response.getWriter().println("<p>Your account is disabled. Please contact the administrator.</p>");
	                }
	            } else {
	                // User validation failed
	                response.getWriter().println("<p>Invalid username, password, or role.</p>");
	            }

	            // Closing database resources
	            rs.close();
	            pst.close();
	            con.close();
	            
	            dispatcher.forward(request, response);
	        } catch (ClassNotFoundException e) {
	            e.printStackTrace();
	        } catch (SQLException e) {
	            e.printStackTrace();
	        }
	}
	        
}