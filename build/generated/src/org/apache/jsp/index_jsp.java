package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>TODO supply a title</title>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <link href=\"CSS/indexcss.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <a href=\"index.jsp\">\n");
      out.write("                <!-- <em><img src=\"IMG/CoolClips_vc026403.png\"/></em>-->\n");
      out.write("                <em>Vibbay</em>\n");
      out.write("            </a>\n");
      out.write("            <nav>\n");
      out.write("                <div id=\"emailUsuario\">\n");
      out.write("                        \n");
      out.write("                </div>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"inicioSesion.jsp\">Acceder</a></li>\n");
      out.write("                    <li><a href=\"formularioRegistro.jsp\">Registrarse</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <form action=\"MostrarPrueba.jsp\">\n");
      out.write("                <fieldset>\n");
      out.write("                    <legend><span class=\"number\"></span> Busque su articulo</legend>\n");
      out.write("                  <!-- <a href=\"listaArticulos.jsp\" class=\"formate1\"> Pinche aqui para ver todos los articulos a la venta</a> -->\n");
      out.write("                  Selecione la categoria del producto que desea buscar<select name=\"categoria\" id=\"categoria\" class=\"form-input\" >\n");
      out.write("                        <option value=\"Electronica\">Electronica</option>\n");
      out.write("                        <option value=\"Deporte\">Deporte</option>\n");
      out.write("                        <option value=\"Hogar\">Hogar</option>\n");
      out.write("                    </select>\n");
      out.write("                  <input type=\"submit\" value=\"Buscar\">\n");
      out.write("                    \n");
      out.write("                </fieldset>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
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
