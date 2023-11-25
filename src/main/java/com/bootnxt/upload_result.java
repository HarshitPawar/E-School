package com.bootnxt;

import java.io.File;
import java.io.IOException;
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


/**
 * Servlet implementation class upload_timetable
 */
@WebServlet("/upload_result")
@MultipartConfig
public class upload_result extends HttpServlet {
	private static final long serialVersionUID = 1L;
 
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 String dbUrl = "jdbc:mysql://localhost:3306/record?useSSL=false";
	     String dbUser = "root";
	     String dbPassword = "";
	     
	     try {
	    	 Class.forName("com.mysql.jdbc.Driver");
	    	 Connection conn = DriverManager.getConnection(dbUrl, dbUser, dbPassword);
	    	 
	    	 if (conn != null) {
	                Part filePart = request.getPart("resultFile");
	                String fileName = getFileName(filePart);
	                String uploadDirectory = "C:/Users/Harshit/eclipse-workspace/E_SCHOOL/src/main/webapp/results/";
	                String uploadedFile = uploadDirectory + generateUniqueFileName(fileName);

	                if (saveFile(filePart, uploadedFile) && fileName != null) {
	                    String sql = "INSERT INTO result_f (Result_name, Result_path) VALUES (?, ?)";
	                    PreparedStatement stmt = conn.prepareStatement(sql);
	                    stmt.setString(1, fileName);
	                    stmt.setString(2, uploadedFile);

	                    if (stmt.executeUpdate() > 0) {
	                        request.setAttribute("upload_result", "success");

	                    } else {
	                        request.setAttribute("upload_result", "success");
	                    }

	                    stmt.close();
	                } else {
	                    response.getWriter().write("Error uploading file.");
	                }
	                request.getRequestDispatcher("teacher.jsp").forward(request, response);

	                conn.close();
	            } else {
	                response.getWriter().write("Failed to connect to the database.");
	            }
	        } catch (ClassNotFoundException | SQLException e) {
	            e.printStackTrace();
	            response.getWriter().write("Database error: " + e.getMessage());
	        }
	    }

	    private String getFileName(Part part) {
	        for (String content : part.getHeader("content-disposition").split(";")) {
	            if (content.trim().startsWith("filename")) {
	                return content.substring(content.indexOf('=') + 1).trim().replace("\"", "");
	            }
	        }
	        return null;
	    }

	    private String generateUniqueFileName(String fileName) {
	        String uniqueID = UUID.randomUUID().toString();
	        String fileExtension = fileName.substring(fileName.lastIndexOf("."));
	        return uniqueID + fileExtension;
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
