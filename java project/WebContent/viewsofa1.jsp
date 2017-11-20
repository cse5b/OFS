<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="com.login.user"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Product Gallery</title>
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
.jumbotron {
  display: flex;
  align-items: center;
  background-image: url('file:///C:/Users/Ravi%20Bhargav/Pictures/jumbo.jpg');
  background-size: cover;
  color: #ffffff;
  height: 500px;
  text-shadow: 0.25px 0.25px 0.25px #000000;
}

.jumbotron h2 {
  font-size: 60px;
  font-weight: 700;
  margin: 0;
  color: #fff;
}


.jumbotron h3 {
  margin: 0 0 20px;
  color: #fff;
}

section .row img {
  margin: 0 0 30px;
  width: 100%;
}
footer {
  font-size: 12px;
  padding: 20px 0;
}

footer .col-sm-8 {
  display: flex;
  justify-content: flex-end;
}

footer ul {
  list-style: none;
}

footer li img {
  width: 32px;
  height: 32px;
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

  <div class="col-sm-4 my_text">
  <div class="pull-left">
   ${sessionScope.LOGINDATA.fname}
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
          <li><a href="viewsofa.jsp">sofa</a></li>
         </ul>
         </li>
          
         <li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">Lamps and Lightning <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="#">New Arrivals</a></li>
          <li><a href="#">Wall light</a></li>
          <li><a href="#">Shelves light</a></li>
          <li><a href="#">Garden Light</a></li>
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
    <ul class="nav navbar-nav navbar-right">
      <li><a href="register.jsp"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="login.html"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
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

 <div class="row">
 <div class="head2">
<h2 class="col-sm-4">Product Gallery</h2>
</div>
</div>
<div class="row">
<img src="https://cdn.shopify.com/s/files/1/0191/2234/products/sc_8152_jodhpur.jpg?v=1479900590" alt= "sofa picture" width="500" height="400" class="col=sm-6">
<div class="col-sm-6">
<h2><b>Sure Fit Sofa Furniture</b></h2>
<hr>
<h2>Total Foam work sofa covered from the tip to the stand.</h2> 
<p>Price:Rs50000<br><h5 style="color:blue;">Cash on Delivery available<br></h5><h5 style="color:green;">In Stock</h5></p>
<img src="data:image/png;base64,&#10;        iVBORw0KGgoAAAANSUhEUgAAABgAAAAYCAYAAADgdz34AAAAGXRFWHRTb2Z0d2FyZQBBZG9iZSBJbWFnZVJlYWR5ccllPAAAA2hpVFh0WE1MOmNvbS5hZG9iZS54bXAAAAAAADw/eHBhY2tldCBiZWdpbj0i77u/IiBpZD0iVzVNME1wQ2VoaUh6cmVTek5UY3prYzlkIj8+IDx4OnhtcG1ldGEgeG1sbnM6eD0iYWRvYmU6bnM6bWV0YS8iIHg6eG1wdGs9IkFkb2JlIFhNUCBDb3JlIDUuMy1jMDExIDY2LjE0NTY2MSwgMjAxMi8wMi8wNi0xNDo1NjoyNyAgICAgICAgIj4gPHJkZjpSREYgeG1sbnM6cmRmPSJodHRwOi8vd3d3LnczLm9yZy8xOTk5LzAyLzIyLXJkZi1zeW50YXgtbnMjIj4gPHJkZjpEZXNjcmlwdGlvbiByZGY6YWJvdXQ9IiIgeG1sbnM6eG1wTU09Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC9tbS8iIHhtbG5zOnN0UmVmPSJodHRwOi8vbnMuYWRvYmUuY29tL3hhcC8xLjAvc1R5cGUvUmVzb3VyY2VSZWYjIiB4bWxuczp4bXA9Imh0dHA6Ly9ucy5hZG9iZS5jb20veGFwLzEuMC8iIHhtcE1NOk9yaWdpbmFsRG9jdW1lbnRJRD0ieG1wLmRpZDpGQjdGMTE3NDA3MjA2ODExOEE2REFFQ0ZDRDYzMURDMyIgeG1wTU06RG9jdW1lbnRJRD0ieG1wLmRpZDoxODRCODVFQTMxMjQxMUU0ODFDOTlDN0EzMDI2Qjg3QSIgeG1wTU06SW5zdGFuY2VJRD0ieG1wLmlpZDo0N0RBRUY3QzMwRTcxMUU0ODFDOTlDN0EzMDI2Qjg3QSIgeG1wOkNyZWF0b3JUb29sPSJBZG9iZSBQaG90b3Nob3AgQ1M2IChNYWNpbnRvc2gpIj4gPHhtcE1NOkRlcml2ZWRGcm9tIHN0UmVmOmluc3RhbmNlSUQ9InhtcC5paWQ6RkU3RjExNzQwNzIwNjgxMThBNkRBRUNGQ0Q2MzFEQzMiIHN0UmVmOmRvY3VtZW50SUQ9InhtcC5kaWQ6RkI3RjExNzQwNzIwNjgxMThBNkRBRUNGQ0Q2MzFEQzMiLz4gPC9yZGY6RGVzY3JpcHRpb24+IDwvcmRmOlJERj4gPC94OnhtcG1ldGE+IDw/eHBhY2tldCBlbmQ9InIiPz79jjcGAAAC90lEQVR42pyVe2iOYRjGv2+bmR2wWPxBhEZsmK0pbAih1WZKUhPylxYtJCKnJiSJUbSUHLKYzHkO2eQ4ZqI55lAOhSxznMMWv1vXq8fXtw+769f7vc/3PM/1HK77fv2pqak+RSTkwQC4AXvguy94VIINvAnHoLi6uvpNsI5+CSTASUhx/rsA4+FjkHHlMNZ5/wSFsA6hJrdjGLSDs5r8NsyGBzAMdjezg3EQB1lQCjGwGo6kpaVFBwpsgCS4CkNhM2TCC8jRsbnRSqu3hR1nxZO0mKfa8V5E/K6Adfiq1bxT+yuYqd9LAgRidETPoYLJUhC5qMVZWzbkuwKx8BICL8nu5B701h158Q3K1H8EXEIkCxGbfIr6FNIW6wm8hU4QESDQA7pAY8BFf4Zc6AprIApKmLAbImaMQzq+PE+gRp3SnUk6wCntbhs0BLnoL7AItqjfYrUX65njCZxQw2Rn8HToKb/P84WOZdrlRL2bI394ljeBEnWYAe2d1VnckgGaDY6ljket7ZpjSuDddvtax/5LwOy4T772VlumLM4PSL7mIgPioU7viXr/ncmJSjKbtB88gRWwFB5DmswQbAchlcP0tMwtgja6JEuUlXBGbjoM0b4WRJjz2xLqIYyCBdCkJKxVph5tiYjfqaYWg+E8hKvenFYuVMpVFTAB3jtj0sV9c1CwYudGFcxR+wEYpPS3jH0EI+Gyapcd4yaNKVLe1OCkgaEELLaqAMapXCRLZAhcg75wXTu1yvtB/e9Af7iCSHYoAZ/sah+cjnBOk5u3h8NGjbPiVg9jOJa5+lCthdZme0SSQglYJk5TmYhXduapZBToXqw092HyKtm1ERbyc5VECkIJ+OSiWcoHG7ALdkBblfNyPQNjv57d/ybg7WS57FqvXZlbpsppfwTHEq5j8gzzVwEvSnWBZtvOsFNC85m0lyaPUrt97Z7B+mB58C+Rq2NLdtoa9CmN0Icok/u4+z87cOOgHDMatis/IpUXZoYMb3KLnwIMALul2MTR81IuAAAAAElFTkSuQmCC&#10;        alt=" click="" to="" call"="" title="Click to call" height="24" width="24" style="margin: 6px 10px; display: block; float: left;">
<span class="a-text-bold">Having trouble placing the order? Contact on 9963654125</span>
<hr>
<h3><b><u>Description</u></b></h3>
<div id="featurebullets_feature_div" class="feature" data-feature-name="featurebullets">

<div id="feature-bullets" class="a-section a-spacing-medium a-spacing-top-small">
		
                               <ul class="a-unordered-list a-vertical a-spacing-none">
					
					
						<li><span class="a-list-item"> 
							All over diamond pattern quilt stitch woven fabric.
							
						</span></li>
					
						<li><span class="a-list-item"> 
							One-piece design drapes easily over the seat back &amp; arms. Tuck flaps into the seat area at side and back.
							
						</span></li>
					
						<li><span class="a-list-item"> 
							Protects furniture from pet hair &amp; stains
							
						</span></li>
					
						<li><span class="a-list-item"> 
							Measurement points for the best fit chair up to 24" width by 37" length arm to arm
							
						</span></li>
					
						<li><span class="a-list-item"> 
							100-percent cotton
							
						</span></li>
					
				</ul>
			
 
</div>

    </div>
</div>

</div>
<hr>
<div class="row">
<h3 class="col-sm-6"><b>Product Specifications</b></h3>
</div>
<div class="row">
<div class="head3">

<div class="container">
<div class="col-sm-6">
<h4>Technical Details</h4>

<table class="table table-striped">
         <tr><td class="label label-info" style="font-size:100%;">Item Weight</td><td class="value" style="font-size:100%;">2.5 Kg</td></tr>
<tr><td class="label label-info" style="font-size:100%;">Product Dimensions</td><td class="value" style="font-size:100%;">127 x 193 x 2.5 cm</td></tr>
         <tr><td class="label label-info" style="font-size:100%;">Shipping Weight</td><td class="value" style="font-size:100%;">1.5 Kilograms</td></tr>
         <tr><td class="label label-info" style="font-size:100%;">Item Model Number</td><td class="value" style="font-size:100%;">SF37507</td></tr>
         <tr><td class="label label-info" style="font-size:100%;">Item Part Number</td><td class="value" style="font-size:100%;">SF37507</td></tr>
         <tr><td class="label label-info" style="font-size:100%;">Is Assembly Required</td><td class="value" style="font-size:100%;">No</td></tr>
         <tr><td class="label label-info" style="font-size:100%;">Warranty Available</td><td class="value" style="font-size:100%;">Yes</td></tr>



</table>
</div>
<div class="col-sm-6">
<br>
<br>
<a href="cart.html" class="btn btn-warning btn-lg" role="button" style="font-size:300%">Add to Cart</a>
  <button type="button" class="btn btn-danger btn-lg" style="font-size:300%">Buy Now</button>
  
</div>
</div>
</div>
</div>
<hr>
<div class="row">
<div class="container">
<h2 class="col-sm-6"><b>Write a Review:</b></h2>
 <form>
    <div class="form-group">
      <textarea class="form-control" rows="5" id="comment"></textarea>
    </div>
  </form>
  <button type="button" class="btn btn-submit btn-sm" style="font-size:100%">Submit</button>
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