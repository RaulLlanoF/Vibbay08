package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class listaArticulos_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <link href=\"CSS/cabeceraCss.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <link href=\"CSS/listaArticulosCss.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("        <script type=\"text/javascript\" src=\"JavaScript/paginaListaArticulos.js\"></script>\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("            <a href=\"index.jsp\">\n");
      out.write("                <!-- <em><img src=\"IMG/CoolClips_vc026403.png\"/></em>-->\n");
      out.write("                <em>Vibbay</em>\n");
      out.write("            </a>\n");
      out.write("            <nav>\n");
      out.write("                <ul>\n");
      out.write("                    <li><a href=\"inicioSesion.jsp\">Acceder</a></li>\n");
      out.write("                    <li><a href=\"formularioRegistro.jsp\">Registrarse</a></li>\n");
      out.write("                </ul>\n");
      out.write("            </nav>\n");
      out.write("        </header>\n");
      out.write("        <div class=\"form\">\n");
      out.write("            <div id=\"elements\">\n");
      out.write("                <table>\n");
      out.write("                    <legend><span class=\"number\"></span> Aqui tiene los articulos disponibles en este momento</legend>\n");
      out.write("                    <thead>\n");
      out.write("                        <tr>\n");
      out.write("                            <th>Nombre Articulo</th>\n");
      out.write("                            <th>Precio</th>\n");
      out.write("                            <th> </th>\n");
      out.write("                        </tr>\n");
      out.write("                    </thead>\n");
      out.write("                    <tbody id=\"elementsList\">\n");
      out.write("                        <tr>\n");
      out.write("                            <td colspan=\"3\">Not elements to show</td>\n");
      out.write("                        </tr>\n");
      out.write("                    </tbody>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("            <div class=\"prueba\">\n");
      out.write("                <table>\n");
      out.write("                    <tr>\n");
      out.write("                        <th><button type=\"button\" class=\"botones\" id=\"btndeporte\"  >Categoria deporte</button></th>\n");
      out.write("                        <th><button type=\"button\" class=\"botones\" id=\"btnelectronica\"  >Categoria electronica</button></th>\n");
      out.write("                        <th> <button type=\"button\" class=\"botones\" id=\"btnhogar\"  >Categoria hogar</button></th>\n");
      out.write("                    </tr>\n");
      out.write("                </table>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("\n");
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
