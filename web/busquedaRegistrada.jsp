<%-- 
    Document   : busquedaRegistrada
    Created on : 03-ene-2017, 12:12:30
    Author     : Raúl
--%>

<%@page import="javax.websocket.Decoder.BinaryStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="utils.*"%>
<%
  HttpSession objsesion = request.getSession(false);
  String email = (String)objsesion.getAttribute("email");
  if(email.equals("")){
      response.sendRedirect("index.jsp");
  }
  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/cabeceraCss.css" rel="stylesheet" type="text/css">
        <link href="CSS/listaArticulosCss.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JavaScript/registroPuja.js"></script>
        <link rel="stylesheet" href="CSS/formularioRegistroProductoCss.css">
        <title>JSP Page</title>
    </head>
    <body>
        <header>
            <a href="index.jsp">
                <!-- <em><img src="IMG/CoolClips_vc026403.png"/></em>-->
                <em>Vibbay</em>
            </a>
            <nav>
                <ul>
                    <li>Hola <% out.println(email); %></li>
                    <li><a href="MenuUsuario.jsp">Volver al Menu</a></li>
                </ul>
            </nav>
        </header>
        
        <%String categoriaB = request.getParameter("categoria");%>
        <div class="form1">
            <div id="elements">
        <table >
            <tr><td><b>Numero&nbsp;Producto&nbsp;&nbsp;&nbsp;</b></td><td><b>Nombre&nbsp;Producto&nbsp;&nbsp;&nbsp;</b></td><td><b>Categoria&nbsp;&nbsp;&nbsp;</b></td><td><b>Descripcion&nbsp;&nbsp;&nbsp;</b></td><td><b>Precio&nbsp;&nbsp;&nbsp;</b></td><td><b>Foto</b></td></tr>

            <%!
                private Connection con;
                private Statement set;
                private ResultSet rs;

                public void jspInit() {
                    con = BD.getConexion();
                };
            
                public void jspDestroy() {
                    System.out.println("Entrando en el destroy()...");
                    BD.destroy();
                };
            %>
            <%
                try {
                    String nombreproducto;
                    String categoria;
                    String descripcion;
                    Float precio;
                    InputStream foto;
                    int numeroproducto;
                    set = con.createStatement();
                    rs = set.executeQuery("select * from articulo where correopropietario <>'"+email+"' and situacion ='enventa'");
                    while (rs.next()) {
                        numeroproducto = rs.getInt("id");
                        nombreproducto = rs.getString("nombreproducto");
                        categoria = rs.getString("categoria");
                        descripcion = rs.getString("descripcion");
                        precio = rs.getFloat("precio");
                        foto = rs.getBinaryStream("foto");
                        
            %>                         
            <tr><td><%=numeroproducto%></td>
                <td><%=nombreproducto%></td>
                <td><%=categoria%></td>
                <td><%=descripcion%></td>
                <td><%=precio%></td>
                <td><%=foto%></td></tr>
            
                <%
                        }
                        rs.close();
                        set.close();
                        //con.close();
                    } catch (Exception ex) {
                        System.out.println("Error en acceso a BD Vibay08" + ex);
                    }
                %>
        </table>
            </div>
        </div>
        <div class="form">
            <form action="registrarpuja" method="POST" id="formRegPuja">
                <fieldset>
                    <legend><span class="number"></span> Formulario de puja</legend>
                    Escribe el numero del producto que deseas<input type="number"  id="numerodearticulo" class="form-input" name="numerodearticulo" placeholder=""  required ><br>
                    Escribe el precio que estas dispuesto a pagar<input type="number" id="puja" class="form-input" name="puja" placeholder=""  required> 
                    <table >
                        <tr>
                            <th><input type="button" value="Enviar" id="btnRegistroPuja"  /> </th>
                           
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
        
    </body>
</html>