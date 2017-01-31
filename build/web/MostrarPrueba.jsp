<%-- 
    Document   : MostrarPrueba
    Created on : 29-dic-2016, 12:52:26
    Author     : Raúl
--%>


<%@page import="javax.websocket.Decoder.BinaryStream"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="utils.*"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/cabeceraCss.css" rel="stylesheet" type="text/css">
        <link href="CSS/listaArticulosCss.css" rel="stylesheet" type="text/css">
        <title>Lista Articulos</title>
    </head>
    <body>
        <header>
            <a href="index.jsp">
                <!-- <em><img src="IMG/CoolClips_vc026403.png"/></em>-->
                <em>Vibbay</em>
            </a>
            <nav>
                <ul>
                    <li><a href="inicioSesion.jsp">Acceder</a></li>
                    <li><a href="formularioRegistro.jsp">Registrarse</a></li>
                </ul>
            </nav>
        </header>
        
        <%String categoriaB = request.getParameter("categoria");%>
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
                    //nueva
                    OutputStream oImagen;
                    //
                    set = con.createStatement();
                    rs = set.executeQuery("SELECT * FROM articulo where categoria='"+categoriaB+"'");
                    while (rs.next()) {
                        nombreproducto = rs.getString("nombreproducto");
                        categoria = rs.getString("categoria");
                        descripcion = rs.getString("descripcion");
                        precio = rs.getFloat("precio");
                       foto = rs.getBinaryStream("foto");
                        //nueva
                       // byte array[] = rs.getBytes("foto");
                        //response.setContentType("image/gif");
                        //oImagen = response.getOutputStream();
                        //oImagen.write(array);
                        //oImagen.flush();
                        //oImagen.close();
                        
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
