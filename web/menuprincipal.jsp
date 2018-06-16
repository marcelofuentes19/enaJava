<%-- 
    Document   : menuprincipal
    Created on : 15-jun-2018, 17:16:30
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
    
    <h1>Menú Principal</h1>
   
    
            
       <input type="button" style="width:250px; height:25px" value="Ingresar Requerimiento" onclick = "location='ingresarrequerimiento.jsp'"/>
            
        <div class="spacer"></div>
       
   
       <input type="button" style="width:250px; height:25px" value="Consultar Requerimientos" onclick = "location='consultarrequerimientos.jsp'"/>
            
        <div class="spacer"></div>
            
       <input type="button" style="width:250px; height:25px" value="Cerrar Requerimiento" onclick = "location='cerrarrequerimientos.jsp'"/>
            
        <div class="spacer"></div>

    </form>
    </body>
</html>
