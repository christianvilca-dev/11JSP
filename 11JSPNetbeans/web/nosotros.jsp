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
    </head>
    <body>
        <h1>Nosotros somos</h1>
        <%@include file="WEB-INF/partials-static/footer.html" %>
    </body>
</html>
