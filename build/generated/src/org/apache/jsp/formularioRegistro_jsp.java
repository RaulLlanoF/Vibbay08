package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class formularioRegistro_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link rel=\"stylesheet\" href=\"CSS/formularioRegistroCss.css\" >\n");
      out.write("        <script src=\"JavaScript/ValidacionRegistro.js\" language=\"javascript\" type=\"text/javascript\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       \n");
      out.write("        <div class=\"form\">\n");
      out.write("            <form action=\"index.html\" method=\"POST\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend><span class=\"number\"></span> Formulario de Registro</legend>\n");
      out.write("                    <input type=\"text\"  id=\"nombre\" class=\"form-input\" name=\"nombre\" placeholder=\"Escribe tu nombre\" pattern=\"[A-Za-z]{3,}\" required >\n");
      out.write("                    <input type=\"tel\" id=\"telefono\" class=\"form-input\" name=\"telefono\" placeholder=\"Escribe tu telefono\"  required>\n");
      out.write("                    <input type=\"email\" id=\"email\" class=\"form-input\" name=\"email\" placeholder=\"Escribe tu email *\" required>\n");
      out.write("                    <input type=\"password\" name=\"contrasena\" id=\"contrasena\" class=\"form-input\" placeholder=\"Escribe tu contraseña\" required >\n");
      out.write("                    <input type=\"text\" name=\"field5\" class=\"form-input\" placeholder=\"Escribe tu nick\">\n");
      out.write("                    <input type=\"date\" name=\"field6\" class=\"form-input\" id=\"fechanacimiento\" >\n");
      out.write("                    \n");
      out.write("                    <table >\n");
      out.write("                        <tr>\n");
      out.write("                            <th><input type=\"submit\" value=\"Enviar\" id=\"btnRegistro\"  /> </th>\n");
      out.write("                            <th><input type=\"submit\" value=\"Volver\" onclick = \"location='index.html'\"/></th>\n");
      out.write("                        </tr>\n");
      out.write("                    </table>\n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("        </div>\n");
      out.write("       \n");
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
