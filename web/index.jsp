<%-- 
    Document   : index
    Created on : 15-jun-2018, 17:14:18
    Author     : ignacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
    <h1>Autentificacion</h1>
        <form action="menuprincipal.jsp" method="post">
        <tr>             
        <table>
            <tr>
            <td>Usuario:</td>
            <td><input type="text" name="user"></td>
            </tr>
            <tr>
            <td>Password:</td>
            <td><input type="password" name="pass"></td>                     
            </tr>
            <tr>
            <td colspan="2">
            <input type="submit" style="width:100px; height:25px" value="Ingresar">
            </td>
            </tr>
            </td>
            </tr>
            </table> 
            </form>    
            
  
    </body>
</html>
