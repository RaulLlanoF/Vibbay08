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
        <link rel="stylesheet" href="CSS/formularioRegistroProductoCss.css">
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
        <div class="form1">
            <div id="elements">
        <table >
            <tr><td><b>Numero Producto</b></td><td><b>Nombre Producto</b></td><td><b>Categoria</b></td><td><b>Descripcion</b></td><td><b>Precio</b></td><td><b>Foto</b></td><td><b>Situacion</b></td></tr>

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
                    String situacion;
                    String categoria;
                    String descripcion;
                    Float precio;
                    InputStream foto;
                    int numero;
                    
                    set = con.createStatement();
                    rs = set.executeQuery("SELECT * FROM articulo where correopropietario='"+email+"'");
                    while (rs.next()) {
                        numero = rs.getInt("id");
                        nombreproducto = rs.getString("nombreproducto");
                        categoria = rs.getString("categoria");
                        descripcion = rs.getString("descripcion");
                        precio = rs.getFloat("precio");
                        foto = rs.getBinaryStream("foto");
                        situacion = rs.getString("situacion");
                        
            %>                         
            <tr><td><%=numero%></td>
                <td><%=nombreproducto%></td>
                <td><%=categoria%></td>
                <td><%=descripcion%></td>
                <td><%=precio%></td>
                <td><%=foto%></td>
                <td><%=situacion%></td></tr>
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
            <form action="cerrarpuja" method="POST" id="formRegUsuario">
                <fieldset>
                    <legend><span class="number"></span> Formulario de cierre de puja </legend>
                    Escribe el numero del producto que deseas cerrar<input type="number"  id="numerodearticulo" class="form-input" name="numerodearticulo" placeholder=""  required ><br> 
                    <table >
                        <tr>
                            <th><input type="submit" value="Enviar" id="btnRegistro"  /> </th>
                           
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
          <div class="form">
              <form action="consultarPujas.jsp" method="POST" id="formRegUsuario">
                <fieldset>
                    <legend><span class="number"></span> Formulario Consulta de Pujas </legend>
                    Escribe el numero del producto para el que quieres consultarlas pujas<input type="number"  id="consultarpujas" class="form-input" name="consultarpujas" placeholder=""  required ><br> 
                    <table >
                        <tr>
                            <th><input type="submit" value="Enviar" id="btnRegistro"  /> </th>
                           
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
        
        
        



    </body>
</html>

