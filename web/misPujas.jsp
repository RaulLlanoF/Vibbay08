<%-- 
    Document   : misPujas
    Created on : 04-ene-2017, 14:47:29
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
            <tr><td><b>Numero de Articulo</b></td><td><b>Precio puja</b></td></tr>

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
                    Float puja;
                    int numero;
                    set = con.createStatement();
                    rs = set.executeQuery("select * from pujas where pujante='"+email+"'");
                    while (rs.next()) {
                        numero =rs.getInt("idproducto");
                        puja = rs.getFloat("preciopuja");
                                     
            %>                         
            <tr><td><%=numero%></td>
                <td><%=puja%></td></tr>
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
