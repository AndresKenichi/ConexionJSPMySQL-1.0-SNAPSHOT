<%-- 
    Document   : Listado
    Created on : 23 ago. 2020, 12:51:51
    Author     : ThinkPad
--%>

<%@page import="java.sql.*"%>
<%@page import="com.mysql.cj.jdbc.Driver" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/estilos.css">

    </head>
    <body text-align="center">
        <h1>Listado de Usuarios</h1>

        <table border="1">
           
            <tr bgcolor="#ff6600">
                <th colspan="5">Mantenimiento de Usuarios</th>
                <th>
                    <a href="nuevo.jsp">
                    <img src="Iconos/agregar.png" width="50" height="50">
                    </a>
                </th>
                
                 
            </tr>
            
             <thead> 
            <tr bgcolor="#ff6600">
                <th>Codigo</th><th>Nombre</th><th>Edad</th><th>Sexo</th><th>Password</th><th>Accion</th>

            </tr>
            </thead>

            <%
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;

                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/cursojsp?user=root&password=");
                    //Inicializar statement para ejecutar consulta
                    sta = cnx.createStatement();
                    //Almacenamos la informacion de la consulta
                    rs = sta.executeQuery("select * from usuarios");

                    while (rs.next()) {
            %>
            <tbody>
            <tr>
                <th data-label="Codigo"><%= rs.getString(1)%></th> 
                <th data-label="Nombre"><%= rs.getString(2)%></th> 
                <th data-label="Edad"><%= rs.getString(3)%></th> 
                <th data-label="Sexo"><%= rs.getString(4)%></th> 
                <th data-label="Pass"><%= rs.getString(5)%></th> 
                <th>
                    <a href="editar.jsp?cod=<%= rs.getString(1)%>">
                    <img src="Iconos/editar.png" width="50" height="50">
                    </a>
                    ||
                    <a href="eliminar.jsp?cod=<%= rs.getString(1)%>">
                    <img src="Iconos/eliminar.png" width="50" height="50">
                    </a>
                    
                    
                </th>
            </tr>
            </tbody>

            <%

                    }
                    sta.close();
                    rs.close();
                    cnx.close();

                } catch (Exception e) {

                }


            %>

        </table>


    </body>
</html>
