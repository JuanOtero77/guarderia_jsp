<%-- 
    Document   : mensaje
    Created on : Apr 6, 2024, 2:06:52 AM
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mensaje del sistema</title>
    </head>
    <body>
    <center>
        <h1>
            <%=request.getParameter("mensaje")%>                    
        </h1>
        <hr/>
        <a href="index.jsp"><<< Volver ::: </a>
    </center>
    </body>
</html>
