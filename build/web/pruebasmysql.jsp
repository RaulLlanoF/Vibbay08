<%-- 
    Document   : pruebasmysql
    Created on : 26-dic-2016, 19:28:11
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%@page import="java.io.*"%>
<%@page import="java.util.*"%>
<%@page import="java.sql.*"%>
<%@page import="utils.*"%>

<html>
    <head><title>Estadísticas de fútbol</title></head>
    <body>
        <h1>Ejemplo de Estadísticas</h1>
        <table border=1>
            <tr><td><b>Jugador</b></td><td><b>Votos</b></td></tr>

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
                    String nombre;
                    String votos;
                    set = con.createStatement();
                    rs = set.executeQuery("SELECT * FROM usuario");
                    while (rs.next()) {
                        nombre = rs.getString("email");
                        votos = rs.getString("nombre");
            %>                         
            <tr><td><%=nombre%></td>
                <td><%=votos%></td></tr>
                <%
                        }
                        rs.close();
                        set.close();
                        //con.close();
                    } catch (Exception ex) {
                        System.out.println("Error en acceso a BD Jugadores" + ex);
                    }
                %>
        </table>
        <h3>Muchas gracias por su visita</h3>
    </body>
</html>
