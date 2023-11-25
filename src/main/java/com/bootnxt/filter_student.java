//package com.bootnxt;
//
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.sql.Connection;
//import java.sql.DriverManager;
//import java.sql.ResultSet;
//import java.sql.Statement;
//
//import javax.servlet.ServletException;
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//
///**
// * Servlet implementation class filter_student
// */
//@WebServlet("/filter_student")
//public class filter_student extends HttpServlet {
//	private static final long serialVersionUID = 1L;
//    
//	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//		response.setContentType("text/html");
//		PrintWriter out = response.getWriter();
//
//        try {
//            // Database connection
//            String db_url = "jdbc:mysql://localhost:3306/record?useSSL=false";
//            String db_user = "root";
//            String db_password = "";
//            Connection conn = DriverManager.getConnection(db_url, db_user, db_password);
//
//            String sql = "SELECT Student_name, Attendance, Assignment, Result FROM saar_t";
//            Statement statement = conn.createStatement();
//            ResultSet result = statement.executeQuery(sql);
//
//            out.println("<table>");
//            out.println("<thead>");
//            out.println("<tr><th>Student Name</th><th>Attendance</th><th>Assignment</th><th>Result</th></tr>");
//            out.println("</thead>");
//            out.println("<tbody>");
//
//            while (result.next()) {
//                out.println("<tr>");
//                out.println("<td>" + result.getString("Student_name") + "</td>");
//                out.println("<td>" + result.getString("Attendance") + "</td>");
//                out.println("<td>" + result.getString("Assignment") + "</td>");
//                out.println("<td>" + result.getString("Result") + "</td>");
//                out.println("</tr>");
//            }
//
//            out.println("</tbody>");
//            out.println("</table>");
//
//            conn.close();
//        } catch (Exception e) {
//            out.println("Error: " + e.getMessage());
//        }
//    }
//}
//		

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
@WebServlet("/filter_student")
@MultipartConfig
public class filter_student extends HttpServlet {
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
	                String byname = request.getParameter("studentNameFilter");
	                String sql = "SELECT S_roll, S_name, Class, Father_name, Mother_name, Year_of_Admission FROM students WHERE S_name = ?";
	                PreparedStatement stmt = conn.prepareStatement(sql);
	                stmt.setString(1, byname);
	                
	                ResultSet rs = stmt.executeQuery();
	                
	                out.println("<div id='studentData1'>");
	                if (rs.next()) {
	                	out.println("<h2>Student Details:</h2>");
	                    out.println("<p>Name: " + rs.getString("S_name") + "</p>");
	                    out.println("<p>Roll_No.: " + rs.getString("S_roll") + "</p>");
	                    out.println("<p>Class: " + rs.getString("Class") + "</p>");
	                    out.println("<p>Father's name: "+rs.getString("Father_name") + "<p>");
	                    out.println("<p>Mother's name: "+rs.getString("Mother_name") + "<p>");
	                    out.println("<p>Year of Admission: "+rs.getString("Year_of_Admission") + "<p>");
	                    
	                   
	                }
	                else {
	                	out.println("<div class='error-msg'>" + "No record found." + byname + "</div>");
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

		
	


