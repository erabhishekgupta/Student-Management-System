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

  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/cetpa","root","root");
  Statement st=cn.createStatement();
  ResultSet rst=st.executeQuery("select * from studentinfo");
  %>
  <div class="row mt-3">
  <div class="col-10 offset-1">
<h1 style="text-align:center ;margin-bottom:3rem; margin-top:.05rem ;color:gray; text-decoration:underline">Student Records</h1>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">Student_ID</th>
      <th scope="col">Student_Name</th>
      <th scope="col">Student_Email</th>
      <th scope="col">Student_Course</th>
    </tr>
  </thead>
  <tbody>
  <%
  while(rst.next()){  %>
    <tr>
      
      <td><%=rst.getString(1)%></td>
      <td><%=rst.getString(2)%></td>
      <td><%=rst.getString(3)%></td>
      <td><%=rst.getString(4)%></td>
      
    </tr>

    <%
  }
    %>
  </tbody>
</table>
</div>
</div>
</body>
</html>