<%-- 
    Document   : consultarPujas
    Created on : 04-ene-2017, 13:31:32
    Author     : Raúl
--%>

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
                    <li><a href="articulosConDueño.jsp">Volver A Mis Subastas</a></li>

                </ul>
            </nav>
        </header>
         <%int numeroArticulo = Integer.parseInt(request.getParameter("consultarpujas"));%>
        <div class="form">
            <div id="elements">
        <table >
            <tr><td><b>Precio puja</b></td><td><b>Pujador</b></td></tr>

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
                    String pujador;      
                    set = con.createStatement();
                    rs = set.executeQuery("select * from pujas where idproducto="+numeroArticulo+"");
                    while (rs.next()) {
                        puja = rs.getFloat("preciopuja");
                        pujador = rs.getString("pujante");              
            %>                         
            <tr><td><%=puja%></td>
                <td><%=pujador%></td></tr>
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
