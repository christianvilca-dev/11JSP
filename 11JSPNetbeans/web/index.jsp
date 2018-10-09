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
        <!-- jsp:include paginas web dinamicas (JSP) y que permite enviar parametros -->
        <jsp:include page="WEB-INF/partials-dinamic/menu-navegacion.jsp"> 
            <jsp:param name="pagina" value="inicio"></jsp:param>
        </jsp:include>
        
        <h1>Hello World!</h1>
        
        <!-- @include paginas web staticas (html puro)-->
        <%@include file="WEB-INF/partials-static/footer.html" %> 
        
        <p>
        <%
            // Codigo snippet Java se usa ";"
            int a=5, b=4, c;
            c=a+b;
            out.print("el resultado es: " + c);
        %>
        </p>
        
        <div>
        <%= 
            // Expresion Java para mostrar variable
            c
        %>
        </div>
    </body>
</html>
