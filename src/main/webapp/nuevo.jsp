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
                    <td>
                        <select name="txtEdad">
                            <option value="0">Seleccione:</option>
                            <option value="1">1</option>
                            <option value="2">2</option>
                            <option value="3">3</option>
                            <option value="4">4</option>
                            <option value="5">5</option>
                            <option value="6">6</option>
                            <option value="7">7</option>
                            <option value="8">8</option>
                            <option value="9">9</option>
                            <option value="10">10</option>
                            <option value="11">11</option>
                            <option value="12">12</option>
                            <option value="13">13</option>
                            <option value="14">14</option>
                            <option value="15">15</option>
                            <option value="16">16</option>
                            <option value="17">17</option>
                            <option value="18">18</option>
                            <option value="19">19</option>
                            <option value="20">20</option>
                            <option value="21">21</option>
                            <option value="22">22</option>
                            <option value="23">23</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                            <option value="28">28</option>
                            <option value="29">29</option>
                            <option value="30">30</option>
                            <option value="31">31</option>
                            <option value="32">32</option>
                            <option value="33">33</option>
                            <option value="34">34</option>
                            <option value="35">35</option>
                            <option value="36">36</option>
                            <option value="37">37</option>
                            <option value="38">38</option>
                            <option value="39">39</option>
                            <option value="40">40</option>
                            <option value="41">41</option>
                            <option value="42">42</option>
                            <option value="43">43</option>
                            <option value="44">44</option>
                            <option value="45">45</option>
                            <option value="46">46</option>
                            <option value="47">47</option>
                            <option value="48">48</option>
                            <option value="49">49</option>
                            <option value="50">50</option>
                            <option value="51">51</option>
                            <option value="52">52</option>
                            <option value="53">53</option>
                            <option value="54">54</option>
                            <option value="55">55</option>
                            <option value="56">56</option>
                            <option value="57">57</option>
                            <option value="58">58</option>
                            <option value="59">59</option>
                            <option value="60">60</option>
                            <option value="61">61</option>
                            <option value="62">62</option>
                            <option value="63">63</option>
                            <option value="64">64</option>
                            <option value="65">65</option>
                            <option value="66">66</option>
                            <option value="67">67</option>
                            <option value="68">68</option>
                            <option value="69">69</option>
                            <option value="70">70</option>
                            <option value="71">71</option>
                            <option value="72">72</option>
                            <option value="73">73</option>
                            <option value="74">74</option>
                            <option value="75">75</option>
                            <option value="76">76</option>
                            <option value="77">77</option>
                            <option value="78">78</option>
                            <option value="79">79</option>
                            <option value="80">80</option>
                            <option value="81">81</option>
                            <option value="82">82</option>
                            <option value="83">83</option>
                            <option value="84">84</option>
                            <option value="85">85</option>
                            <option value="86">86</option>
                            <option value="87">87</option>
                            <option value="88">88</option>
                            <option value="89">89</option>
                            <option value="90">90</option>
                            <option value="91">91</option>
                            <option value="92">92</option>
                            <option value="93">93</option>
                            <option value="94">94</option>
                            <option value="95">95</option>
                            <option value="96">96</option>
                            <option value="97">97</option>
                            <option value="98">98</option>
                            <option value="99">99</option>
                            <option value="100">100</option>
                            <option value="101">101</option>
                            <option value="102">102</option>
                            <option value="103">103</option>
                            <option value="104">104</option>
                            <option value="105">105</option>
                            <option value="106">106</option>
                            <option value="107">107</option>
                            <option value="108">108</option>
                            <option value="109">109</option>
                            <option value="110">110</option>
                            <option value="111">111</option>
                            <option value="112">112</option>
                            <option value="113">113</option>
                            <option value="114">114</option>
                            <option value="115">115</option>
                            <option value="116">116</option>
                            <option value="117">117</option>
                            <option value="118">118</option>
                            <option value="119">119</option>
                            <option value="120">120</option>


                        </select> 

                    </td>
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
                    sta.executeUpdate("insert into usuarios values('" + cod + "','" + nom + "'," + edad + ",'" + sexo + "','" + pass + "')");
                    request.getRequestDispatcher("Listado.jsp").forward(request, response);

                } catch (SQLException e) {

                    out.print("Error: " + e);

                }
            }


        %>



    </body>
</html>
