<%
    int r = Integer.parseInt(request.getAttribute("respuesta").toString());
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <jsp:include page="WEB-INF/partials-dinamic/menu-navegacion.jsp"> 
            <jsp:param name="pagina" value="inicio"></jsp:param>
        </jsp:include>
        <h1>Respuesta de la suma <%= r %></h1>
        <%@include file="WEB-INF/partials-static/footer.html" %>
    </body>
</html>
