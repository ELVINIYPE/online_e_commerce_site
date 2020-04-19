package com.user;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/UserRegistration")
public class UserRegistration extends HttpServlet {
	private static final long serialVersionUID = 1;


	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

try
	
{
 Class.forName("com.mysql.jdbc.Driver"); //load driver
 
 Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/investsmart","root","mendez007"); //create connection
 
 if(request.getParameter("btn_register")!=null) //check register button click event not null
 {
  String name,username,email,password;
  
  name=request.getParameter("name"); //txt_firstname
  username=request.getParameter("uname"); //txt_lastname
  email=request.getParameter("email"); //txt_email
  password=request.getParameter("passwd"); //txt_password
  
  PreparedStatement pstmt=null; //create statement
  
  pstmt=con.prepareStatement("insert into users(uname,password,name,email) values(?,?,?,?)"); //sql insert query
  pstmt.setString(1,name);
  pstmt.setString(2,username);
  pstmt.setString(3,email);
  pstmt.setString(4,password);
  
  pstmt.executeUpdate(); //execute query
  
  
  con.close(); //close connection
 }
}
catch(Exception e)
{
 
}

response.sendRedirect("successfull-registration.html");

	}
}
