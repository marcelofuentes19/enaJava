<%-- 
    Document   : cerrarrequerimientos
    Created on : 15-jun-2018, 17:28:11
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
     <h1>Cerrar Requerimientos</h1>
        <table> 
        <tr>
        <td>Gerencia:</td>
        <td><select name="requerimientos"><option value="gerencia">SELECCIONAR</option></td>
        </tr>
        <tr>
        <td>Depto:</td>
        <td><select name="requerimientos"><option value="depto">SELECCIONAR</option></td>
        </tr>
        <tr>
        <td>Asignar A:</td>
        <td><select name="requerimientos"><option value="asignar">SELECCIONAR</option>
        <td><input type="submit" style="width:150px; height:20px" value="buscar"></td>
        </table><br><br><br><br><br><br><br><br><br><br><br>
   <input type="button" style="width:250px; height:25px" value="Volver al Menu" onclick = "location='menuprincipal.jsp'"/>
    </body>
</html>
