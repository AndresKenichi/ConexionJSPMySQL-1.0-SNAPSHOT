<%-- 
    Document   : eliminar
    Created on : 29 ago. 2020, 22:12:48
    Author     : ThinkPad
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.cj.jdbc.Driver" %>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       
                <%
          
                String codi = request.getParameter("cod");
               

                Connection cnx = null;
                ResultSet rs = null;
                Statement sta = null;

                try {
                    //forName con el Driver de conexion
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    //Inicializamos la conexion
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/cursojsp?user=root&password=");
                    //INICIALIZAMOS EL STATAMENT
                    sta = cnx.createStatement();

                    //EJECUTAMOS LA SENTENCIA INSERT UPDATE SE USA EXECUTEUPDATE
                    sta.executeUpdate("delete from usuarios where CodUsu='"+codi+"'");
                    request.getRequestDispatcher("Listado.jsp").forward(request, response);

                } catch (SQLException e) {

                    out.print("Error: " + e);

                }
            


        %>
        
        
        
        
    </body>
</html>
