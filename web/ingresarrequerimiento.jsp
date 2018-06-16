<%-- 
    Document   : ingresarrequerimiento
    Created on : 15-jun-2018, 17:27:09
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
        <h1>Ingresar Requerimientos</h1>
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
        <option value="asignar">abastecimiento</option> 
        </td>
        </tr>
        <tr>
        <td>Encargado:</td>
        <td><select name="requerimientos"><option value="encargado">SELECCIONAR</option></td>
        </tr>
        <tr>
        <td>Gerencia:</td>
        <td><select name="requerimientos"><option value="gerencia">SELECCIONAR</option></td>
        </tr>
         <tr>
        <td>Requerimiento:</td>
        <td><input type="text" style="width:350px; height:45px" name="descripcion"></td>
        </tr>
        </table>
        <tr>
            <td><input type="submit" style="width:150px; height:30px" value="Guardar"></td>
      <input type="button" style="width:250px; height:25px" value="Volver al Menu" onclick = "location='menuprincipal.jsp'"/>
        </tr>
        
            
       
    </body>
</html>
