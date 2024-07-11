<%@ include file="menu.jsp" %>
<html>
<head>
<meta charset="UTF-8">
<title>SMS</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" 
  integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH"
  crossorigin="anonymous">
</head>
<body>


<div style="justify-content:center ; margin: auto; text-align:center ; margin-top:2rem;"><h1 style="color:gray; text-decoration:underline">Welcome to Cetpa Infotech</h1></div>
<div class="row mt-3">
<div class="col-6 offset-3">
<form class="form-control" method="get" action="save-rc.jsp">

  <div class="mb-3">
    <label for="studentID" class="form-label">Student ID </label>
    <input type="number" class="form-control" id="studentID" name="studentID">
    </div>
    
   <div class="mb-3">
    <label for="StudentName" class="form-label">StudentName</label>
    <input type="password" class="form-control" id="StudentName" name="StudentName">
  </div> 
  
   <div class="mb-3">
    <label for="StudentEmail" class="form-label">Student Email</label>
    <input type="email" class="form-control" id="StudentEmail" name="StudentEmail">  
  </div>

   <div class="mb-3 ">
    <label class="form-label" for="CourseEnrolled">Course Enrolled</label>
    <input type="text" class="form-control" id="CourseEnrolled" name="CourseEnrolled">
  </div>
  
  <div class="mb-3 form-check">
    <input type="checkbox" class="form-check-input" id="Checkbox">
    <label class="form-check-label" for="Checkbox">Agree to all terms & condtions</label>
  </div>
  
  <button type="submit" class="btn btn-secondary" style="margin-left:39rem ;margin-bottom:1rem ;color:white; background-color:black">Submit</button>
</form>
</div>
</div>
</body>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"
 integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz"
  crossorigin="anonymous"></script>
</html>