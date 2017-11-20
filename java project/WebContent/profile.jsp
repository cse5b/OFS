<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.login.user"%>
<!DOCTYPE html>
<html>
<head>
  <title>Fancy Furno</title>
  <meta charset="utf-8"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="main.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>
div.head1 {
font-family:Lucida Handwriting;
font-size:300%;
text-align:center;
}
.bottom-left {
    position: absolute;
    bottom: 20px;
    left: 20px;
}
h4{
color:red;
}
a.button {
    -webkit-appearance: button;
    -moz-appearance: button;
    appearance: button;

    text-decoration: none;
    color: initial;
}
</style>
<script>  
function validateemail()  
{ 
	var fname = document.form.fname.value;
	var lname = document.form.lname.value;
	var email = document.form.email.value;
	var mobile = document.form.mobile.value; 
	var password = document.form.password.value;
	var conpassword= document.form.conpassword.value;
var atposition=email.indexOf("@");  
var dotposition=email.lastIndexOf(".");  
if (atposition<1 || dotposition<atposition+2 || dotposition+2>=email.length){  
  alert("Please enter a valid e-mail address \n atpostion:"+atposition+"\n dotposition:"+dotposition);  
  return false;  
  } 

if (fname==null || fname=="")
{ 
alert("First Name can't be blank"); 
return false; 
}
if (lname==null || lname=="")
{ 
alert("Last Name can't be blank"); 
return false; 
}
else if (email==null || email=="")
{ 
alert("Email can't be blank"); 
return false; 
}
else if (mobile.length < 10)
{ 
alert("Enter correct contact number"); 
return false; 
}
else if(password.length < 6)
{ 
alert("Password must be at least 6 characters long."); 
return false; 
} 
else if (password!=conpassword)
{ 
alert("Confirm Password should match with the Password"); 
return false; 
} 
}  
</script> 

</head>
<body>

<header class="container">

<div class="row">

  <div class="col-sm-4">
  <div class="pull-left">
  
  ${sessionScope.LOGINDATA.fname}
 
</div>
</div>
<div class="col-sm-8">
<div class="pull-right">
<div class="d-flex flex-column">
    <a href="#">profile</a>|
  <a href="#">cart</a>|
  <a href="#">wish list</a>|
  <a href="Logout">logout</a>
  
</div>
</div>
</div>
</div>
<br>
 <div class="row">
 <div class="head1">
  <h1><strong>FANCY FURNO</strong></h1>
  </div>
  </div>
</header>
<div class="row">
   
  
   <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="#">Quick Access</a>
    </div>
    <ul class="nav navbar-nav">
      <li class="active"><a href="home2.html">Home</a></li>
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Decors <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Mirror</a></li>
          <li><a href="#">Wall Shelves</a></li>
          <li><a href="#">Wall Arts</a></li>
          <li><a href="#">Garden Decor</a></li>
          <li><a href="#">Vintage Decor</a></li>
          <li><a href="#">Decor-Clock</a></li>
          </ul>
          </li>
          
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Furniture <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Living Room</a></li>
          <li><a href="#">Chairs</a></li>
          <li><a href="#">Dinning Room</a></li>
          <li><a href="#">Bed Room</a></li>
          <li><a href="#">Bar Furnitures</a></li>
          <li><a href="#">Modular Kitchen</a></li>
          <li><a href="#">Kids furniture</a></li>
          <li><a href="#">Garden Furniture</a></li>
          <li><a href="#">sofa</a></li>
         </ul>
         </li>
          
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lamps and Lightning <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Wall light</a></li>
          <li><a href="#">Shelves light</a></li>
          <li><a href="#">Garden Light</a></li>
          <li><a href="#">Study Lamp</a></li>
          <li><a href="#">Floor Lamp</a></li>
          <li><a href="#">Foot Lights</a></li>
          <li><a href="#">Bed Lights</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Furnishings<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Carpet Rugs</a></li>
          <li><a href="#">Flooring</a></li>
          <li><a href="#">Wallpapers</a></li>
          <li><a href="#">Bedsheet</a></li>
          <li><a href="#">Mattrress</a></li>
          <li><a href="#">Curtains</a></li>
          <li><a href="#">Bedding and Pillows</a></li>
         </ul>
         </li>
         
    </ul>
    
  </div>
</nav>
 </div>
 


 <div class="container">
 <form action="Profileservlet?id=${sessionScope.LOGINDATA.user_id}" method="post" onsubmit="validateemail()" >
   
 <div class="row">        
<h2 style="font-family:Hobo Std;color:red"><b><u>edit your profile</u></b></h2>
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
                    <b>First Name:*</b>
                </td>
                <td>
                    <input type="text" name="fname"  required="true">
                </td>
            </tr>
            
            <tr>
                <td>
                    <b>Last Name:*</b>
                </td>
                <td>
                    <input type="text" name="lname"  required="true">
                </td>
            </tr>
            
            <tr>
                <td>
                   <b>Password*</b>
                </td>
                <td>
                    <input name="password" type="password"  required="true">
                    
                </td>
            </tr>
             <tr>
                <td>
                   <b>Confirm Password*</b>
                </td>
                <td>
                    <input name="password" type="password"  required="true">
                    
                </td>
            </tr>
           
            <tr>
                <td>
                   <b>Email*</b>
                </td>
                <td>
                    <input type="text" name="email"  required="true">
                    
                </td>
            </tr>
             <tr>
                <td>
                   <b>Contact no.:*</b>
                </td>
                <td>
                    <input type="text" name="mobile"  required="true">
                    
                </td>
            </tr>
             
            <tr>
                <td>
                   <b>Gender:*</b>
                </td>
                <td>
                    <input type="text"  name="gen" required="true">
                    
                </td>
            </tr>
            <tr>
                <td>
                   <b>street:*</b>
                </td>
                <td>
                    <input type="text" name="str" required="true">
                    
                </td>
            </tr> 
            <tr>
                <td>
                   <b>state:*</b>
                </td>
                <td>
                    <input type="text"  name="sta" required="true">
                    
                </td>
            </tr>
            <tr>
                <td>
                   <b>Country:*</b>
                </td>
                <td>
                    <input type="text"  name="cou" required="true">
                    
                </td>
            </tr>
            <tr>
                <td>
                   <b>Pincode:*</b>
                </td>
                <td>
                    <input type="text"  name="pin" required="true">
                    
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
</div>