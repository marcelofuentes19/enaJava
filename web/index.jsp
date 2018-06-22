<%-- 
    Document   : index
    Created on : 15-jun-2018, 17:14:18
    Author     : ignacio
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         
   <center> <h1>Autentificacion</h1>
    <form action="servlet" method="post">
        <tr>             
        <table>
            <tr>
            <td>Usuario:</td>
            <td><input type="text" name="username"></td>
            </tr>
            <tr>
            <td>Password:</td>
            <td><input type="password" name="password"></td>                     
            </tr>
            <tr>
            <td colspan="2">
            </td>
            </tr>
            </td>
            </tr>
            </table> 
        <p><input type="checkbox" name="remember">Recordar</p> 
        <input type="submit" value="ingresar">
    </form>
      </center>
      <%
            if(request.getAttribute("msg")!=null){
            out.print(request.getAttribute("msg"));
            }
            %>
</body>
    
    
     
</html>
