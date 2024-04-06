<%-- 
    Document   : buscar
    Created on : Apr 5, 2024, 7:50:27 PM
    Author     : PC
--%>
<%@page import="models.entities.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    String mensaje = request.getParameter("mensaje");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Eliminar usuario al sistema</title>
    </head>
    <body>
        <h1>Eliminar usuario</h1>
        <hr/>
        <form action="guarderia_jsp/usuarioController" method="post">
            <table>
                <tr>
                <th style="text-align: right">ID:</th> 
                <td><input type="number" name="id"/></td>
                <tr/>
                <tr>
                    <th><input type="submit" value="Buscar"></th>
                    <th><input type="reset" value="Limpiar"/></th>
                </tr>
                <tr>
                    <th style="text-align: right">CLAVE:</th>
                    <!--<td style="text-align: left"><%= (u1 != null)?"*******":"" %></td>-->
                </tr>
                <tr>
                    <th style="text-align: right">NOMBRE:</th>
                   <!--<td style="text-align: left"><%= (u1 != null)?u1.getNombre():"" %></td>-->
                </tr>
                <tr>
                    <th style="text-align: right">CORREO:</th>
                    <!--<td style="text-align: left"><%= (u1 != null)?u1.getCorreo():"" %></td>-->
                </tr>
                <tr>
                    <th style="text-align: right">ROL:</th>
                    <!--<td style="text-align: left"><%= (u1 != null)?u1.getRol():"" %></td>-->
                </tr>
            </table>
        </form>
        <hr/>
        <%
            if (u1 != null){ 
        %>
        <form action="guarderia_jsp/usuarioController" method="post">
            <input type="hidden" name="id" value="<%= u1.getid()%>">
            <table>
                <tr><td><input type="submit" value="Eliminar"/></td></tr>
            </table>
        </form>
        <%
            }
        %>
        <p style="color: #FF0000;">
            <%= (mensaje != null && ! mensaje.isEmpty())?mensaje:""%>
        </p>
        <% request.getSession().setAttribute("usuario.buscar", null); %>
    </body>
</html>
