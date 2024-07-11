<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">

<title>SMS</title>
</head>
<body>
<button class='back-button btn btn-light' onclick='history.back()'>
 <i class="fas fa-arrow-left"></i>&nbsp;&nbsp;<b>go-back</b></button>

  <%
  String studentID = request.getParameter("studentID");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/cetpa", "root", "root");
  PreparedStatement ps = cn.prepareStatement("select * from studentinfo where studentID=?");
  ps.setString(1, studentID);
  ResultSet rst = ps.executeQuery();
  if (rst.next()) {
  %>
  <div class="row mt-3">
  <div class="col-10 offset-1">
  <form class="form-control" action="update.jsp">
   <div >
  <h1 style="text-align:center; margin-bottom:3rem; margin-top:.05rem; color:gray; text-decoration:underline">Your Details</h1>
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
  <tr>
        <td><%=rst.getString(1)%><input type="hidden" value="<%=rst.getString(1)%>" class="form-control" name="studentID"></td>
        <td><input type="text" class="form-control"   value="<%= rst.getString(2) %>" name="StudentName"></td>
        <td><input type="text" class="form-control" value="<%= rst.getString(3) %>" name="StudentEmail"></td>
        <td><input type="text" class="form-control"  value="<%= rst.getString(4) %>" name="CourseEnrolled"></td>
  </tr>
</tbody>
   <tr>
  </tr>
  </table>
 <div style="text-align:right">
   <button class="btn btn-secondary" style="text-align:right">Update Record</button></div>
 </div> 
 </div> 
 </div>     
  </form>
 
  
<%	  
  }
  else
  {
	%>

       
      
      <h3 style="color:red; text-align:center">Product with studentID "<%= studentID %>" doesn't exist</h3>
  
	<%	  
  }
  %>

</body>
</html>
