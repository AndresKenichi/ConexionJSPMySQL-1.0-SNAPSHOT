<%-- 
    Document   : editar
    Created on : 30 ago. 2020, 12:39:47
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
         <link rel="stylesheet" href="css/estilos.css">
    </head>
    <body>
         <form action="" method="post">
            <h2>Editar Usuarios</h2>
            <%
            
             /*   String cod=request.getParameter("cod");
            
                //Creamos las variables de conexion 
                Connection cnx=null;
                Statement sta=null;
                ResultSet rs=null;
                
                Class.forName("com.mysql.cj.jdbc.Driver");
                cnx=DriverManager.getConnection("jdbc:mysql://localhost:3307/cursojsp?user=root&password=");
                
                //inicializamos el sta con la conexion 
                sta=cnx.createStatement();
                rs=sta.executeQuery("");
                


               */

            
            %>
            <table border="1" width="100%" align="center">
                <tr>
                    <td>Codigo: </td>
                    <td><input type="text" name="txtCod" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txtNom"></td>
                </tr>
                <tr>
                    <td>Edad: </td>
                    <td><input type="text" name="txtEdad"></td>
                </tr>
                <tr>
                    <td>Sexo: </td>
                    <td class="guarda">
                        <div class="oss">
                        <div class="container">
                            <div class="item">
                        <input type="radio" name="txtSexo" value="M">
                            </div>

                            <div class="item">
                        <label>Masculino</label>
                            </div>

                        
                            <div class="itemM">
                        <input type="radio" name="txtSexo" value="F">
                            </div>

                            <div class="itemM">
                        <label>Femenino</label>
                            </div>

                        </div>
                        </div>

                    </td>
                </tr>
                <tr>
                    <td>Password: </td>
                    <td><input type="Password" name="txtPas"></td>
                </tr>
                <tr>

                    <th colspan="2"><input type="submit" name="btnGrabar" value="Editar Usuario" id="boton"></th>
                </tr>

            </table>
        </form>

    </body>
</html>
