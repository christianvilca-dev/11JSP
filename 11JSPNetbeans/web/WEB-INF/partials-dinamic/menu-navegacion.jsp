<%
    String pagina = request.getParameter("pagina");
%>
<nav>
    <ul>
        <!-- Se captura el parametro -->
        <li><a href="/11JSPNetbeans/" class=<% out.print(pagina.equals("inicio")?"seleccionado":""); %>>Inicio</a></li>
        <li><a href="/11JSPNetbeans/nosotros.jsp" class=<% out.print(pagina.equals("nosotros")?"seleccionado":""); %>>Nosotros</a></li>
        <li><a></a></li>
    </ul>
</nav>
<p> El parametro recibido es: <% out.print(pagina); %></p>