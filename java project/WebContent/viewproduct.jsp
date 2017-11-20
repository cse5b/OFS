<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.login.dblogin"%>
<%@page import="com.mysql.jdbc.Blob" %>
<%@page import="java.io.OutputStream" %>
<html>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<head>

<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('C:\Users\Ravi Bhargav\Pictures\pic.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 100%;
  font-size: 16px;
  padding: 12px 20px 12px 40px;
  border: 1px solid #ddd;
  margin-bottom: 12px;
}

#myTable {
  border-collapse: collapse;
  width: 100%;
  border: 1px solid #ddd;
  font-size: 18px;
}

#myTable th, #myTable td {
  text-align: left;
  padding: 12px;
}

#myTable tr {
  border-bottom: 1px solid #ddd;
}

#myTable tr.header, #myTable tr:hover {
  background-color: #f1f1f1;
}
</style>
</head>
<body>
<%
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<h2 align="center"><font><strong>product info</strong></font></h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

<table id="myTable" >
<tr class="header">
<th style="width:10%;"><b>id</b></th>
<th style="width:20%;"><b>product name</b></th>
<th style="width:20%;"><b>weight</b></th>
<th style="width:30%;"><b>dimension</b></th>
<th style="width:30%;"><b>model no</b></th>
<th style="width:20%;"><b>warranty</b></th>
<th style="width:30%;"><b>price</b></th>
<th style="width:30%;"><b>special price</b></th>
<th style="width:10%;"><b>    </b></th>
<th style="width:10%;"><b>    </b></th>
</tr>
<%
try{ 
connection = dblogin.connectcall();
statement=connection.createStatement();
String sql ="SELECT * FROM product";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr >

<td><%=resultSet.getInt("product_id") %></td>
<td><%=resultSet.getString("p_name") %></td>
<td><%=resultSet.getString("weight") %></td>
<td><%=resultSet.getString("dimension") %></td>
<td><%=resultSet.getString("modelno") %></td>
<td><%=resultSet.getString("warranty") %></td>
<td><%=resultSet.getInt("p_price") %></td>
<td><%=resultSet.getInt("special_price") %></td>
				

<% int id = resultSet.getInt("product_id");
%>
<td><a href="modifyproduct.jsp?id=<%=id%>"> <i class="fa fa-pencil fa-fw w3-padding w3-xlarge w3-text-green "></i></a></td>
<td><a href='deleteservlet?id=<%=id%>'> <i class="fa fa-trash w3-padding w3-xlarge w3-text-orange"></i></a></td>
</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
<script>
function myFunction() {
  var input, filter, table, tr, td, i;
  input = document.getElementById("myInput");
  filter = input.value.toUpperCase();
  table = document.getElementById("myTable");
  tr = table.getElementsByTagName("tr");
  for (i = 0; i < tr.length; i++) {
    td = tr[i].getElementsByTagName("td")[1];
    if (td) {
      if (td.innerHTML.toUpperCase().indexOf(filter) > -1) {
        tr[i].style.display = "";
      } else {
        tr[i].style.display = "none";
      }
    }       
  }
}
</script>
