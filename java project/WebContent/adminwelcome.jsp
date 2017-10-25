<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<title>Insert title here</title>
<style>
*{
margin:0px;
padding:0px;
}
#container ul{
	list-style:none;
	
}
#container ul li{
	background-color:#3C3E94;
	width:150px;
	border:1px solid white;
	height:50px;
	line-height:50px;
	text-align:center;
	float:left;
	color:white;
	font-size:18px;
}
#container ul li:hover{
background-color: #388222;
}
#container ul ul{
display:none;
}
#container ul li:hover > ul{
display:block;
}
#container ul li:hover > ul a{
color:white;

}
</style>

</head>
<body>
<div class="container">
<ul>
	<li>Product
		<ul>
			<li><a href="addproduct.html">add</a></li>
			<li><a href="modifyproduct.html">modify</a></li>
			<li><a href="deleteproduct.html">delete</a></li>
		</ul>
	</li>
	
	<li>Category
	<ul>
		<li><a href="addcategory.html">add</a></li>
		<li><a href="deletecategory.html">delete</a></li>
	</ul>
	</li>
	<li>Orders
	<ul>
		<li><a href="viewproduct.html">view</a></li>
	</ul>
	</li>
	<li>Customers
	<ul>
	  <li><a href="viewcustomer.html">view</a></li>
	  <li><a href="searchcustomer.html">search</a></li>
	</ul>
	</li>
	
</ul>
</div>

<section class="jumbotron">
<div class="jumbotron">
  <h1 class="display-3">welcome admin</h1>
  <hr class="my-4">
  
  <p class="lead">
    <a class="btn btn-primary btn-lg" href="#" role="button">hey!</a>
  </p>
</div>
</section>
</body>
</html>