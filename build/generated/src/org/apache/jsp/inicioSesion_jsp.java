package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class inicioSesion_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <link href=\"CSS/inicioSesionCss.css\" type=\"text/css\" rel=\"stylesheet\" >\n");
      out.write("        <link href=\"CSS/cabeceraCss.css\" type=\"text/css\" rel=\"stylesheet\">\n");
      out.write("        <script src=\"JavaScript/ValidacionInicioSesion.js\" language=\"javascript\" type=\"text/javascript\">  </script>\n");
      out.write("        <!--<script  src=\"JavaScript/BaseDeDatos.js\" language=\"javascript\" type=\"text/javascript\"></script>-->\n");
      out.write("        <!--<script  src=\"JavaScript/localStorage.js\" language=\"javascript\" type=\"text/javascript\"></script>-->\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("        <a href=\"index.jsp\">\n");
      out.write("            <!-- <em><img src=\"IMG/CoolClips_vc026403.png\"/></em>-->\n");
      out.write("                <em>Vibbay</em>\n");
      out.write("            </a>\n");
      out.write("            <nav>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"inicioSesion.jsp\">Acceder</a></li>\n");
      out.write("                   <li><a href=\"formularioRegistro.jsp\">Registrarse</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <form action=\"iniciar\" method=\"POST\" id=\"formRegUsuario\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend><span class=\"number\"></span> Inicia Sesion</legend>\n");
      out.write("                    <input type=\"email\" id=\"email\" class=\"form-input\" name=\"email\" placeholder=\"Escribe tu email *\" required>\n");
      out.write("                    <input type=\"password\" name=\"contrasena\" id=\"contrasena\" class=\"form-input\" placeholder=\"Escribe tu contraseña\" required >                    \n");
      out.write("                    <table >\n");
      out.write("                        <tr>\n");
      out.write("                            <th><input type=\"button\" value=\"Enviar\" id=\"btnInicio\"    /> </th>\n");
      out.write("                            <th><input type=\"button\" value=\"Volver\" onclick = \"location='index.jsp'\"/></th>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
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
