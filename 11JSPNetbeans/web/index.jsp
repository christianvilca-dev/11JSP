<%-- 
    JSP
    - Nos ayudan a cambiar la perspectiva y tener como principal objetivo 
      el HTML y agregarle informacion dinamica

    - Son compilados para procesarlos como un servlet (una caracteristica de 
      la evolucion del servlet)
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%@include file="WEB-INF/partials-static/footer.html" %>
    </body>
</html>
