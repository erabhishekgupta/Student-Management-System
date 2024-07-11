<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="menu.jsp"%>
<%@page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SMS</title>
</head>
<body>
<%String studentID = request.getParameter("studentID");
 String StudentName = request.getParameter("StudentName");
 String StudentEmail = request.getParameter("StudentEmail");
 String CourseEnrolled = request.getParameter("CourseEnrolled");
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cetpa","root","root");
 
 PreparedStatement  ps = cn.prepareStatement("update studentinfo set StudentName=? ,StudentEmail=? ,CourseEnrolled=? where studentID=?");
 
 ps.setString(1 , StudentName);
 ps.setString(2, StudentEmail);
 ps.setString(3 , CourseEnrolled);
 ps.setString(4, studentID);
 ps.executeUpdate();
%>
  <div >
   <h1 style='color:green ;text-align:center ; margin-top:4rem'  >Product record has been updated successfully</h1>
  </div>
</body>
</html>