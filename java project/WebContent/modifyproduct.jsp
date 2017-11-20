<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

<style>
* {
  box-sizing: border-box;
}

#myInput {
  background-image: url('C:\Users\Ravi Bhargav\Pictures\pic.png');
  background-position: 10px 10px;
  background-repeat: no-repeat;
  width: 30%;
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
String at = request.getParameter("id");
int id = Integer.parseInt(at);
%>
<form action="modifyservlet?id=<%=id%>" method="post" enctype="multipart/form-data">
   
        <h1>Add product</h1>
        <table id="myTable">
        
            <tr>
                <td>
                    select category:
                </td>
                <td>
                    <select name="pcat">
						  <option value="bed">bed</option>
						  <option value="chair">chair</option>
						  <option value="sofa">sofa</option>
						  <option value="table">table</option>
					</select>

                </td>
            </tr>
            <tr>
                <td>
                    Product Name:
                </td>
                <td>
                    <input id="myTable" type="text" name="pname" required>
                </td>
            </tr>
            
          
                       <tr>
                <td>
                   Product weight:
                </td>
                <td>
                    <input type="text"  name="spec" required="true">
                    
                </td>
            </tr>
           
            <tr>
                <td>
                   Product dimension:
                </td>
                <td>
                    <input type="text" name="dim" required="true">
                    
                </td>
            </tr>
             <tr>
                <td>
                   Product model no.:
                </td>
                <td>
                    <input type="text" name="mod" required="true">
                    
                </td>
            </tr>
             
            
            <tr>
                <td>
                   Product warranty:
                </td>
                <td>
                    <input id="myTable" type="text" name="war" required>
                    
                </td>
            </tr>
            <tr>
                <td>
                   Product price:
                </td>
                <td>
                    <input id="myTable" type="text"  name="pri" >
                    
                </td>
            </tr> 
            <tr>
                <td>
                   Special price:
                </td>
                <td>
                    <input id="myTable" type="text"  name="spri">
                    
                </td>
            </tr>
             <tr>
            <td>
            <label for="photo"> Product image:  </label>
            </td>
            <td>
            <input type="file" name="image" required/><br><br>
            
            </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="Submit">
                </td>
                <td>
                    <input type="reset" value="Reset">
                </td>
            </tr>
 
 
        </table>
     
</body>
</html>