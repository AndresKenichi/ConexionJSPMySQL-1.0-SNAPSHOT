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
                //Obtenemos el id que se selecciono en Listado 
                String codi = request.getParameter("cod");

                //Creamos las variables de conexion 
                Connection cnx = null;
                Statement sta = null;
                ResultSet rs = null;
                
                try {
                    Class.forName("com.mysql.cj.jdbc.Driver");
                    cnx = DriverManager.getConnection("jdbc:mysql://localhost:3307/cursojsp?user=root&password=");

                    //inicializamos el sta con la conexion 
                    sta = cnx.createStatement();
                    rs = sta.executeQuery("select * from usuarios where CodUsu='" + codi + "'");

                    //llenamos las cajas de texto usando un while recorriendo la fila y mostrando los resultados el metodo next mueve el cursor
                    while (rs.next()) {
                        

            %>
            <table border="1" width="100%" align="center">
                <tr>
                    <td>Codigo: </td>
                    <td><input type="text" name="txtCod" value="<%=rs.getString(1)%>" readonly="readonly"></td>
                </tr>
                <tr>
                    <td>Nombre: </td>
                    <td><input type="text" name="txtNom" value="<%=rs.getString(2)%>" ></td>
                </tr>
                <tr>
                    <td>Edad: </td>
                    <td><input type="text" name="txtEdad" value="<%=rs.getString(3)%>" ></td>
                </tr>
                <tr>
                    <td>Sexo: </td>
                    <td class="guarda">
                        <div class="oss">
                            <div class="container">
                                <div class="item">
                                    <input type="radio" name="txtSexo" value="<%=rs.getString(1)%>" >
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
                    <td><input type="Password" value="<%=rs.getString(5)%>" name="txtPas"></td>
                </tr>
                <tr>

                    <th colspan="2"><input type="submit" name="btnGrabar" value="Editar Usuario" id="boton"></th>
                </tr>


            </table>
        </form>
        <%
                        
                    }
                    
                } catch (Exception e) {
                    out.print("Error: " + e);
                }
                
            
            

        %>

    </body>
</html>
