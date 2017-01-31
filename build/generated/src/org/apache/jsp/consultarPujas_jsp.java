package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import utils.*;

public final class consultarPujas_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {


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
            
  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <link href=\"CSS/cabeceraCss.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"CSS/listaArticulosCss.css\" rel=\"stylesheet\" type=\"text/css\"> \n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <a href=\"index.jsp\">\n");
      out.write("                <!-- <em><img src=\"IMG/CoolClips_vc026403.png\"/></em>-->\n");
      out.write("                <em>Vibbay</em>\n");
      out.write("            </a>\n");
      out.write("            <nav>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"articulosConDueño.jsp\">Volver A Mis Subastas</a></li>\n");
      out.write("\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("         ");
int numeroArticulo = Integer.parseInt(request.getParameter("consultarpujas"));
      out.write("\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <div id=\"elements\">\n");
      out.write("        <table >\n");
      out.write("            <tr><td><b>Precio puja</b></td><td><b>Pujador</b></td></tr>\n");
      out.write("\n");
      out.write("            ");
      out.write("\n");
      out.write("            ");

                try {
                    Float puja;
                    String pujador;      
                    set = con.createStatement();
                    rs = set.executeQuery("select * from pujas where idproducto=9");
                    while (rs.next()) {
                        puja = rs.getFloat("precio");
                        pujador = rs.getString("pujante");              
            
      out.write("                         \n");
      out.write("            <tr><td>");
      out.print(puja);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(pujador);
      out.write("</td></tr>\n");
      out.write("                ");

                        }
                        rs.close();
                        set.close();
                        //con.close();
                    } catch (Exception ex) {
                        System.out.println("Error en acceso a BD Vibay08" + ex);
                    }
                
      out.write("\n");
      out.write("        </table>\n");
      out.write("            </div>\n");
      out.write("        </div>  \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
