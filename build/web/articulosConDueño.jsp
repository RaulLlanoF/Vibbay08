<%-- 
    Document   : articulosConDueño
    Created on : 26-dic-2016, 18:37:36
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="utils.*"%>
<!DOCTYPE html>
<%
  HttpSession objsesion = request.getSession(false);
  String email = (String)objsesion.getAttribute("email");
  if(email.equals("")){
      response.sendRedirect("index.jsp");
  }
  
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/cabeceraCss.css" rel="stylesheet" type="text/css">
        <link href="CSS/listaArticulosCss.css" rel="stylesheet" type="text/css"> 
       <!-- <script type="text/javascript" src="JavaScript/paginaArticulosConDueño.js"></script>-->
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
                    <li><a href="MenuUsuario.jsp">Volver Al Menu</a></li>

                </ul>
            </nav>
        </header>
        <div class="form">
            <div id="elements">
        <table >
            <tr><td><b>NombreProducto</b></td><td><b>Categoria</b></td><td><b>Descripcion</b></td><td><b>Precio</b></td><td><b>Foto</b></td></tr>

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
                    set = con.createStatement();
                    rs = set.executeQuery("SELECT * FROM articulo where correopropietario='"+email+"'");
                    while (rs.next()) {
                        nombreproducto = rs.getString("nombreproducto");
                        categoria = rs.getString("categoria");
                        descripcion = rs.getString("descripcion");
                        precio = rs.getFloat("precio");
                        foto = rs.getBinaryStream("foto");
                        
            %>                         
            <tr><td><%=nombreproducto%></td>
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



    </body>
</html>

