<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.login.dblogin"%>
<html>
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
<h2 align="center"><font><strong>order info</strong></font></h2>

<table id="myTable">

<tr>

</tr>
<tr class="header">
<th style="width:20%;"><b>Order id</b></th>
<th style="width:20%;"><b>Name</b></th>
<th style="width:20%;"><b>Email id</b></th>
<th style="width:20%;"><b>Contact no</b></th>
<th style="width:20%;"><b>Address</b></th>

<th style="width:20%;"><b>Order list</b></th>
<th style="width:20%;"><b>Total cost</b></th>

</tr>
<%
try{ 
connection = dblogin.connectcall();
statement=connection.createStatement();
String sql ="SELECT o.order_id, u.fname, u.email, u.mobile, p.u_address1 , p.u_country , p.u_state , o.total_cost, pd.p_name from project.order as o , project.profile as p , project.product as pd, project.order_row as od , project.user as u  where (o.user_id = u.user_id) and  (o.order_id = od.order_id) and (od.product_id = pd.product_id) and (u.user_id = p.user_id) ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getInt("order_id") %></td>

<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("u_address1") %> <%=resultSet.getString("u_state") %> <%=resultSet.getString("u_country") %></td>
				
<td>
<%=resultSet.getString("p_name") %>
</td>
<td><%=resultSet.getString("total_cost") %></td>

</tr>

<% 
}

} catch (Exception e) {
e.printStackTrace();
}
%>
</table>
</body>
</html>