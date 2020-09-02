<%--
    Document   : nuevo
    Created on : 28 ago. 2020, 15:00:01
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
            <h2>Registro de Usuarios</h2>
            <table border="1" width="100%" align="center">
                <tr>
                    <td>Codigo: </td>
                    <td><input type="text" name="txtCod"></td>
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

                    <th colspan="2"><input type="submit" name="btnGrabar" value="Guardar Usuario" id="boton"></th>
                </tr>

            </table>
        </form>

        <%
            if (request.getParameter("btnGrabar") != null) {
                String cod = request.getParameter("txtCod");
                String nom = request.getParameter("txtNom");
                int edad = Integer.parseInt(request.getParameter("txtEdad"));
                String sexo = request.getParameter("txtSexo");
                String pass = request.getParameter("txtPas");

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
                    sta.executeUpdate("insert into usuarios values('" + cod + "','" + nom + "'," + edad + ",'" + sexo + "','"+pass +"')");
                    request.getRequestDispatcher("Listado.jsp").forward(request, response);

                } catch (SQLException e) {

                    out.print("Error: " + e);

                }
            }


        %>



    </body>
</html>
