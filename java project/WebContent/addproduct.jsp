<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
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
  <h3 class="col-sm-4" style="font-family:Lucida Handwriting; font-size:300%; text-align:center;">welcome admin</h3>
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
      
      <li><a href="logoutadmin"><span class="glyphicon glyphicon-log-out"></span>Logout</a></li>
    </ul>
  </div>
</nav>
 </div>
</style>
</head>
<body>
<form action="addprodservlet" method="post" enctype="multipart/form-data">
   
 <div class="row">        
<h2 style="font-family:Hobo Std;color:red"><b><u>Add Product</u></b></h2>
</div>
<hr>
<div class="container-fluid">
<div class="row">
<table class="table">

    <tbody>
    <tr>
    <td><span style="color:red "><%=(request.getAttribute("errMessage") == null) ? "" 
    :request.getAttribute("errMessage")%> </span></td>
    <td>
    </td>
       </tr> 
           <tr>
                <td>
                    <b>Category:*<b>
                </td>
                <td>
                    <select name="pcat" style="width:200px;" required="true">
						  <option selected disabled>Choose here</option>
						  <option value="bed">Bed</option>
						  <option value="chair">Chair</option>
						  <option value="sofa">Sofa</option>
						  <option value="table">Table</option>
						</select>

                </td>
             
			</tr>
            <tr>
                <td>
                    <b>Product Name:*</b>
                </td>
                <td>
                    <input type="text" name="pname" required="true">
                </td>
            </tr>
            
            <tr>
                <td>
                   <b>Product weight:*</b>
                </td>
                <td>
                    <input type="text" width=30px height=30px name="spec" required="true">
                    
                </td>
            </tr>
           
            <tr>
                <td>
                   <b>Product dimension:*</b>
                </td>
                <td>
                    <input type="text" width=30px height=30px name="dim" required="true">
                    
                </td>
            </tr>
             <tr>
                <td>
                   <b>Product model no.:*</b>
                </td>
                <td>
                    <input type="text" width=30px height=30px name="mod" required="true">
                    
                </td>
            </tr>
             
            <tr>
                <td>
                   <b>Product warranty:</b>
                </td>
                <td>
                    <input type="text" width=10px height=5px name="war">
                    
                </td>
            </tr>
            <tr>
                <td>
                   <b>Product price:*</b>
                </td>
                <td>
                    <input type="text"name="pri" required="true">
                    
                </td>
            </tr> 
            <tr>
                <td>
                   <b>Special price:</b>
                </td>
                <td>
                    <input type="text"  name="spri">
                    
                </td>
            </tr>
             <tr>
            <td>
            <label for="photo"><b> Product image: </b></label>
            </td>
            <td>
            <input type="file" name="image"><br><br>
            
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
</div>
</body>
</html>