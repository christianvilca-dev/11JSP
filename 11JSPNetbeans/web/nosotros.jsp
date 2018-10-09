<%-- 
    - Usa directivas <% %>
    - Importante proteger los partial para que no se muestren trozos de codigo,
      puesto que debe estar en un contexto
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
        <style>
            nav {
                background-color: #333; 
            }
            nav ul li {
                display: inline-block;
            }
            nav ul li a {
                color: #eee;
                text-decoration: none;
            }
            .seleccionado{
                color: #000;
                background-color: white;
            }
        </style>
    </head>
    <body>
        <jsp:include page="WEB-INF/partials-dinamic/menu-navegacion.jsp">
            <jsp:param name="pagina" value="nosotros"></jsp:param>
        </jsp:include>
        <h1>Nosotros somos</h1>
        <%@include file="WEB-INF/partials-static/footer.html" %>
    </body>
</html>
