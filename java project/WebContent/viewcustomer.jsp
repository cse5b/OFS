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
<h2 align="center"><font><strong>customer info</strong></font></h2>
<input type="text" id="myInput" onkeyup="myFunction()" placeholder="Search for names.." title="Type in a name">

<table id="myTable">

<tr class="header">
<th style="width:20%;"><b>User id</b></th>
<th style="width:30%;"><b>Name</b></th> 
<th style="width:30%;"><b>gender</b></th> 
<th style="width:60%;"><b>Address</b></th>
<th style="width:60%;"><b>contact</b></th>
<th style="width:60%;"><b>email</b></th>

</tr>
<%
try{ 
connection = dblogin.connectcall();
statement=connection.createStatement();
String sql ="SELECT u.user_id, u.fname, u.email, u.mobile, p.u_address1, p.u_country, p.u_sex, p.u_state, p.u_pincode from project.profile as p , project.user as u  where (u.user_id = p.user_id) ";

resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>

<td><%=resultSet.getInt("user_id") %></td>
<td><%=resultSet.getString("fname") %></td>
<td><%=resultSet.getString("u_sex") %></td>
<td><%=resultSet.getString("u_address1") %>  <%=resultSet.getString("u_state")%> <%=resultSet.getString("u_country") %> <%=resultSet.getString("u_pincode") %></td>
<td><%=resultSet.getString("mobile") %></td>
<td><%=resultSet.getString("email") %></td>
				
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

</body>
</html>