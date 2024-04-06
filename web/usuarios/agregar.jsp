<%-- 
    Document   : agregar
    Created on : Apr 5, 2024, 7:49:20 PM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mensaje = request.getParameter("mensaje");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agregar usuario al sistema</title>
    </head>
    <body>
    <center>
        <h1>Agregar usuario</h1>
        <hr/>
        <form action="guarderia_jsp/usuarioController" method="post">
            <table>
                <tr>
                    <th style="text-align: right">ID:</th>
                    <th><input type="number" name="id"/></th>
                </tr>
                <tr>
                    <th style="text-align: right">CLAVE:</th>
                    <th><input type="password" name="clave"/></th>
                </tr>
                <tr>
                    <th style="text-align: right">NOMBRE:</th>
                    <th><input type="text" name="nombre"/></th>
                </tr>
                <tr>
                    <th style="text-align: right">CORREO:</th>
                    <th><input type="email" name="correo"/></th>
                </tr>
                <tr>
                    <th style="text-align: right">ROL:</th>
                    <th><input type="text" name="rol"/></th>
                </tr>
                <tr>
                    <th><input type="submit" name="accion" value="GUARDAR"></th>
                    <th><input type="reset" name="LIMPIAR"/></th>
                </tr>
            </table>
        </form>
        <hr/>
        <p style="color: #FF0000;">
            <%= (mensaje != null && ! mensaje.isEmpty())?mensaje:""%>
        </p>
    </center>
</body>
</html>
