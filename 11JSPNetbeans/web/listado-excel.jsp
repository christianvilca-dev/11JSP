<%
    response.setContentType("application/vnd.openxmlformats-officedocument.spreadsheetml.sheet; charset=UTF-8");
    response.setHeader("Content-Disposition", "attachment; filename=listado.xls");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de excel</h1>
        <table>
            <thead>
                <tr>
                    <th>Codigo</th>
                    <th>Nombre</th>
                    <th>Edad</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>1</td>
                    <td>Pedro</td>
                    <td>20</td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Jenny</td>
                    <td>26</td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Leidy</td>
                    <td>23</td>
                </tr>
            </tbody>
        </table>   
    </body>
</html>
