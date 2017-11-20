<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin panel</title>
 <meta charset="utf-8"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
<body>

<header class="container">

<div class="row">

  <div class="col-sm-4">
  
</div>
</div>
<div class="col-sm-8">
<div class="pull-right">
<div class="d-flex flex-column">
 
</div>
</div>
</div>
</div>

 <div class="row">
  <h3 class="col-sm-4" style="font-family:Lucida Handwriting; font-size:300%; text-align:center;">Welcome Admin</h3>
  </div>

<div class="row">
   
  
    	 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Quick Access</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="adminwelcome.html">Home</a></li>

    <ul class="nav navbar-nav navbar-right">
      <li><a href="logoutadmin"><span class="glyphicon glyphicon-log-out"></span>logout</a></li>
      
    </ul>
  </div>
</nav>
 </div>
</style>
</head>
<body>

   
 <div class="row">        
<h2 style="font-family:Hobo Std;color:red"><b><u>Add Category</u></b></h2>
</div>
<hr>
<form action="Addcatservlet" method="post">
<div class="container-fluid">
<div class="row">

<table class="table">

    <tbody>
        
        <tr>
    <td><span style="color:red "><%= (request.getAttribute("errMessage") == null) ? "" 
    :request.getAttribute("errMessage")%> </span></td>
    <td>
    </td>
       </tr> 
          			<tr>
                <td>
                    <b>Category Name:*<b>
                </td>
                <td>
                    <input type="text" name="cat" required="true">

                </td>
             
			
            </tr>
            <tr>
                <td>
                    <center><input type="submit" value="Add"></center>
					
                </td>
                <td>
                    <input type="reset" value="Reset">
                </td>
            </tr>
		</tbody>
    </table>
    
	</div>
</div>
</form>
</body>
</html>