package com.bootnxt;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.sql.ResultSet;


/**
 * Servlet implementation class upload_timetable
 */
@WebServlet("/profile")
@MultipartConfig
public class profile extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String dbUrl = "jdbc:mysql://localhost:3306/record?useSSL=false";
	     String dbUser = "root";
	     String dbPassword = "";
	     
	     try {
	    	 Class.forName("com.mysql.jdbc.Driver");
	    	 Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
	    	 PrintWriter out = response.getWriter();
	    	 
	    	 if (conn != null) {
	                String s_roll = request.getParameter("S_roll");
	                String sql = "SELECT S_roll, S_name, Class, Father_name, Mother_name, Year_of_Admission FROM students WHERE S_roll = ?";
	                PreparedStatement stmt = conn.prepareStatement(sql);
	                stmt.setString(1, s_roll);
	                
	                ResultSet rs = stmt.executeQuery();
	                
	                out.println("<div id='output-container'>");
	                if (rs.next()) {
	                	out.println("<h2>Profile Details:</h2>");
	                    out.println("<p>Name: " + rs.getString("S_name") + "</p>");
	                    out.println("<p>Roll_No.: " + rs.getString("S_roll") + "</p>");
	                    out.println("<p>Class: " + rs.getString("Class") + "</p>");
	                    out.println("<p>Father's name: "+rs.getString("Father_name") + "<p>");
	                    out.println("<p>Mother's name: "+rs.getString("Mother_name") + "<p>");
	                    out.println("<p>Year of Admission: "+rs.getString("Year_of_Admission") + "<p>");
	                    
	                   
	                }
	                else {
	                	out.println("<div class='error-msg'>" + "No record found." + s_roll + "</div>");
	                }
	                
	                out.println("</div>");
	             
	                conn.close();
	            } else {
	                response.getWriter().write("Failed to connect to the database.");
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            response.getWriter().write("Database error: " + e.getMessage());
	        }
	    
	    }

	    private boolean saveFile(Part part, String filePath) {
	        try {
	            part.write(filePath);
	            return true;
	        } catch (IOException e) {
	            e.printStackTrace();
	            return false;
	        }
	    }
}
