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
 Class.forName("com.mysql.cj.jdbc.Driver");
 Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cetpa","root","root");
 
 PreparedStatement  ps = cn.prepareStatement("delete from studentinfo where studentID=?");

 ps.setString(1, studentID);
 ps.executeUpdate();
%>
  <div>
   <h1 style='color:green ;text-align:center ; margin-top:4rem' >Record has been Deleted successfully</h1>
  </div>
</body>
</html>