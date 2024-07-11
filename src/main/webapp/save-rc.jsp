<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>
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
 
 PreparedStatement  ps = cn.prepareStatement("insert into studentinfo values(? ,? ,? ,?)");
 ps.setString(1 , studentID);
 ps.setString(2 , StudentName);
 ps.setString(3 , StudentEmail);
 ps.setString(4 , CourseEnrolled);
 ps.executeUpdate();
%>
  <div class='dv'>
   <h1 style='color:green ;text-align:center ; margin-top:4rem'  >Product record has been saved successfully</h1>
  </div>

</body>
</html>