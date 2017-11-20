<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Login Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
         <meta charset="utf-8"/>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
</head>
    <center>
        <form action="Checklogin" method="post">
   <div class="container-fluid">
   
        <h1>Welcome User</h1>
        <table cellpadding=10px>
        <tr>
                <td>
                   User Name:
                </td>
                <td>
                    <input type="text" width=10px height=5px name="uname">
                    
                </td>
            </tr>
          
            <tr>
                <td>
                   Password:
                </td>
                <td>
                    <input type="password" width=10px height=5px name="upass">
                    
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
    </div>
    </form>
    </center>
    </body>
    
</html>