<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@page import="com.login.user"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
<title>Cart View</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style>

div.head1 {
font-family:Lucida Handwriting;
font-size:300%;
text-align:center;
}
div.head2 {
font-family:Hobo Std;
color:red;
}
div.head3 {
font-family:Bookman Old Style;
}
.my_text{
font-family: Courier New;

}
.my_text1{
font-family: Courier New;
  display: flex;
  justify-content: flex-end;
  color:#696969;
}
header {
  padding: 20px 0;
}

header .row,
footer .row {
  display: flex;
  align-items: center;
}

header h1 {
  font-weight: 700;
  margin: 0;
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
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


<header class="container">

<div class="row">

  <div class="col-sm-4 my_text">
  <div class="pull-left">
  


 ${sessionScope.LOGINDATA.fname }
</div>
</div>
<div class="col-sm-8 my_text1">
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

          <li><a href="#">Modular Kitchen</a></li>
          <li><a href="#">Kids furniture</a></li>
          <li><a href="#">Garden Furniture</a></li>
          <li><a href="viewsofa.jsp">Sofa</a></li>
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

<div class="row">
 <div class="head2">
<h2 class="col-sm-4">Shopping Cart</h2>
</div>
</div>
<hr>
<table class="container">
<tr>
  <td>
  <span style="color:red "><%= (request.getAttribute("errMessage") == null) ? "" 
    :request.getAttribute("errMessage")%> </span>
    </td>
    </tr>
    </table>
<div class="row">
<div class="container">
<table class="table">
<thead>
<th></th>
<th><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Name 
      Model</font></strong></th>
    <th><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Quantity</font></strong></th>
    <th><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Unit
      Price</font></strong></th>
    <th><strong><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Total</font></strong></th>
 </thead>
<tbody>


  <jsp:useBean id="cart" scope="session" class="com.cart.CartBean" />
  <c:if test="${cart.lineItemCount == 0}">
  <tr>
  <td colspan="4"><font size="2" face="Verdana, Arial, Helvetica, sans-serif">- Cart is currently empty -<br/>
  </tr>
  </c:if>
  <c:forEach var="cartItem" items="${cart.cartItems}" varStatus="counter">
  <form name="item" method="POST" action="CartController">
  <tr>
    <td><a href="viewsofa1.jsp"><img src="https://cdn.shopify.com/s/files/1/0191/2234/products/sc_8152_jodhpur.jpg?v=1479900590" alt= "sofa picture" width="130" height="100"></td>  
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><b><c:out value="${cartItem.name}"/></b><br/>
      <c:out value="${cartItem.model}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif"><input type='hidden' name='itemIndex' value='<c:out value="${counter.count}"/>'><input type='text' name="quantity" value='<c:out value="${cartItem.quantity}"/>' size='2'> <input type="submit" name="action" value="Update">
 <br/>  <br>       <input type="submit" name="action" value="Delete"></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.unitCost}"/></font></td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">$<c:out value="${cartItem.totalCost}"/></font></td>
  </tr>
  </form>
  </c:forEach>
  <tr>
    <td colspan="2"> </td>
    <td> </td>
    <td><font size="2" face="Verdana, Arial, Helvetica, sans-serif">Subtotal: $<c:out value="${cart.orderTotal}"/></font></td>
  </tr>
</tbody>
</table>
</div>
</div>
<hr>
<center><a href="orderservlet" class="btn btn-warning btn-lg" role="button" style="font-size:170%">Proceed for Receipt</a></center>
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