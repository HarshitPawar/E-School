package com.bootnxt;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class admin
 */
@WebServlet("/admin")
public class admin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String pwd = request.getParameter("pword");
		String role = request.getParameter("role");
		RequestDispatcher dispatcher = null;
		Connection con = null;
		
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/record?useSSL=false", "root", "");
			PreparedStatement pst  = con.prepareStatement("insert into staff(Username, Password, Role) values(?,?,?)");
			pst.setString(1, name);
			pst.setString(2, pwd);
			pst.setString(3, role);
			
			int rowcount = pst.executeUpdate();
			dispatcher = request.getRequestDispatcher("admin.jsp");
			if (rowcount>0) {
				request.setAttribute("status","success");	
			}else {
				request.setAttribute("status","failed");
			}
			
//			dispatcher.forward(request, response);
			
		}catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				con.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		 if (dispatcher != null) {
	            dispatcher.forward(request, response);
	        }
	}
}