
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
.navfooterbacktotop {
   
    left: 0;
    bottom: 0;
    width: 100%;
    background-color: black;
    color: white;
    text-align: center;
}

</style>

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
    <a href="profile.jsp">profile</a>|
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

          </ul>
          </li>
          
       <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Furniture <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Living Room</a></li>
          <li><a href="#">Chairs</a></li>
          <li><a href="#">Modular Kitchen</a></li>
          <li><a href="#">Kids furniture</a></li>
          <li><a href="#">Garden Furniture</a></li>
          <li><a href="viewsofa.jsp">sofa</a></li>
         </ul>
         </li>
          
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lamps and Lightning <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Wall light</a></li>
          <li><a href="#">Shelves light</a></li>
          <li><a href="#">Foot Lights</a></li>
          <li><a href="#">Bed Lights</a></li>
        </ul>
      </li>
      
      <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Furnishings<span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Carpet Rugs</a></li>
          <li><a href="#">Flooring</a></li>
          <li><a href="#">Curtains</a></li>
          <li><a href="#">Bedding and Pillows</a></li>
         </ul>
         </li>
         
    </ul>
   
  </div>
</nav>
 </div>
 
<section class="jumbotron">
  <div class="container">
    <div class="row text-center">
      <h2>Real furniture</h2>
      <h3>This Year's Best'</h3>
      <a class="btn btn-primary" href="#" role="button">see all</a>
    </div>
  </div>
</section>

<body>
<div class="row">
<div class="container">
<table class="table table-bordered">
<tbody>
<tr>
<td>
<a href="viewsofa1.jsp"><img src="https://cdn.shopify.com/s/files/1/0191/2234/products/sc_8152_jodhpur.jpg?v=1479900590" alt= "sofa picture" width="400" height="400"></a>
 <form name="modelDetail1" method="POST" action="CartController">
 <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Name:</strong>
       Sure Fit Sofa Furniture</font><input type="hidden" name="Name" value="Sure Fit Sofa Furniture">
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model:</strong>
       SF37507 </font><input type="hidden" name="Model" value="SF37507"></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Price:</strong>
        Rs.50000</font><input type="hidden" name="price" value="50000"></p><input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
      </form></td>
<td>
<a href="viewproduct.html"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR-vEoMMh9LLQFh4QQBcUqlLGzZ71ms8B3dHlEfBFAYP3OemlwTMw" alt= "sofa picture" width="400" height="400"></a>

<form name="modelDetail1" method="POST" action="servlet/CartController">
 <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Name:</strong>
       Furnished Sofa Furniture</font><input type="hidden" name="modelNo" value="Furnished Sofa Furniture">
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model:</strong>
       SF37506 </font><input type="hidden" name="description" value="SF37506"></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Price:</strong>
        Rs.45000</font><input type="hidden" name="price" value="45000"></p><input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
      </form>
</td>
</tr>
<tr>
<td>
<a href="viewproduct.html"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQt8MEaJC-FInEqAL0tjj_gb4kW9uZGndrlWp7wCO2w3T8wPkGTzg" alt= "sofa picture" width="400" height="400"></a>
<form name="modelDetail1" method="POST" action="servlet/CartController">
 <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Name:</strong>
       Perfect sofa</font><input type="hidden" name="modelNo" value="Perfect sofa">
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model:</strong>
       SF37505 </font><input type="hidden" name="description" value="SF37505"></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Price:</strong>
        Rs.45100</font><input type="hidden" name="price" value="45100"></p><input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
      </form>
</td>
<td>
<a href="viewproduct.html"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSUgZNxnuoOtGZX3pggpg8F1ei4X8tkuoQAHLtkHDk6JW2LphOR" alt= "sofa picture" width="400" height="400"></a>
<form name="modelDetail1" method="POST" action="servlet/CartController">
 <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Name:</strong>
       Real Furniture Sofa</font><input type="hidden" name="modelNo" value="Real Furniture Sofa">
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model:</strong>
       SF37508 </font><input type="hidden" name="description" value="SF37508"></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Price:</strong>
        Rs.27000</font><input type="hidden" name="price" value="27000"></p><input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
      </form>
</td>
</tr>
</td>
<td>
<a href="viewproduct.html"><img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRN_Hi_XvvT9SQI2JHBaoSyMfErSxPLxIVP3yEMhUSZOaPVvwM3" alt= "sofa picture" width="400" height="400"></a>
<form name="modelDetail1" method="POST" action="servlet/CartController">
 <font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Name:</strong>
       Sahi Sofa</font><input type="hidden" name="modelNo" value="Sahi Sofa ">
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Model:</strong>
       SF37509 </font><input type="hidden" name="description" value="SF37509"></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Quantity:<input type="text" size="2" value="1" name="quantity"></strong></font></p>
      <p><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><strong>Price:</strong>
        Rs.55000</font><input type="hidden" name="price" value="55000"></p><input type="hidden" name="action" value="add"><input type="submit" name="addToCart" value="Add To Cart">
      </form>
</td>

</tbody>
</table>
</div>

</div>
<br>
<br>
<a href="#nav-top"><div class="navfooterbacktotop"><span class="navFooterBackToTopText">Back to top</span>
<table class="table" cellspacing="0" align="center" role="presentation">
<tbody>
<tr>
<td class="navFooterLinkCol">
<div class="navFooterColHead"><a style="color:white">Get to Know Us</a></div>
<ul>
<li class="nav_first"><a href="#" class="nav_a">About Us</a></li>
<li><a href="#" class="nav_a">Careers</a></li>
<li><a href="/#" class="nav_a">Press Releases</a></li>
<li><a href="#" class="nav_a">Our Cares</a></li>
<li class="nav_last"><a href="#" class="nav_a">Gift a Smile</a></li>
</ul>
</td>

<td class="navFooterColSpacerInner"></td>
<td class="navFooterLinkCol"><div class="navFooterColHead"><a style="color:white">Connect with Us</a></div>
<ul>
<li class="nav_first"><a href="http://www.facebook.com" class="nav_a">Facebook</a></li>
<li><a href="http://www.twitter.com" class="nav_a">Twitter</a></li>
<li class="nav_last"><a href="https://www.instagram.com" class="nav_a">Instagram</a></li>
</ul>
</td>

<td class="navFooterColSpacerInner"></td><td class="navFooterLinkCol"><div class="navFooterColHead"><a style="color:white">Let Us Help You</a></div>
<ul>
<li class="nav_first"><a href="home.html" class="nav_a">Your Account</a></li>
<li><a href="#" class="nav_a">Returns Centre</a></li>
<li><a href="#" class="nav_a">100% Purchase Protection</a></li><li><a href="#" class="nav_a">Our Assistant</a></li>
<li class="nav_last"><a href="#" class="nav_a">Help</a></li>
</ul>
</td>

<td class="navFooterColSpacerInner"></td><td class="navFooterLinkCol"><div class="navFooterColHead"><a style="color:white">Contact us at:</a></div>
<ul>
<li class="nav_first"><a  class="nav_a">Phone: 0671-254632</a></li>
<li class="nav_first"><a  class="nav_a">Mobile: 9988665577</a></li>
<li class="nav_first"><a  class="nav_a">Email: fancyfurno@gmail.com</a></li>

</tr>
</tbody>
</table>
<hr>
<h2> THANK YOU FOR VISITING </h2>
</div>
</a>

</body>
</html>