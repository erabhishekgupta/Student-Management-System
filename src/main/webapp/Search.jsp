<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SMS</title>
</head>
<body>

<div style="justify-content:center ; margin: auto; text-align:center ; margin-top:2rem;"><h1 style="color:gray; 
text-decoration:underline">Enter StudentID to Search</h1></div>
<div class="row mt-3">
<div class="col-6 offset-3">
<form class="form-control" method="get" action="search-record.jsp">
 <div class="mb-3">
 <label for="studentID" class="form-label">Student ID </label>
<input type="number" class="form-control" id="studentID" name="studentID">
</div>
    
<button type="submit" class="btn btn-secondary" style="margin-left:39rem ;margin-bottom:1rem ;color:white;
 background-color:black">Search</button>
</form>
</div>
</div>
</body>
</html>