<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
    <head>
        <title>Login Page</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width">
    </head><center>
        <form action="Checklogin" method="post">
   
        <h1>Welcome User</h1>
        <table>
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
    </body>
</html>