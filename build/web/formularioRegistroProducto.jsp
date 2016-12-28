<%-- 
    Document   : formularioRegistroProducto
    Created on : 26-dic-2016, 18:35:38
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
  HttpSession objsesion = request.getSession(false);
  String email = (String)objsesion.getAttribute("email");
  if(email.equals("")){
      response.sendRedirect("index.jsp");
  }
  
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/formularioRegistroProductoCss.css">
        <script type="text/javascript" src="JavaScript/dragAndDrop1.js"></script>
        <link href="CSS/cabeceraCss.css" type="text/css" rel="stylesheet">
      <!-- <script type="text/javascript" src="JavaScript/paginaRegistroProducto.js"></script>-->
      <script type="text/javascript" src="JavaScript/RegistroProducto.js"></script>
    </head>
    <body>
        <header>
            <a href="index.jsp">
                <!-- <em><img src="IMG/CoolClips_vc026403.png"/></em>-->
                <em>Vibbay <% out.println(email); %></em>
            </a>
            <nav>
                <ul>

                    <li><a href="MenuUsuario.jsp">Volver Al Menu</a></li>
                </ul>
            </nav>
        </header>
        <div class="form">
            <form action="registrarobjetos" id="formRegProducto" enctype="multipart/form-data" method="post">
                <fieldset>
                    <legend><span class="number"></span> Formulario de Registro De Articulo</legend>
                    <input type="text" name="nombreproducto" id="nombreproducto" class="form-input" placeholder="Escribe el nombre del producto" required >
                    Foto:<input type="file" name="foto1" id="foto1" class="form-input" >
                    <textarea name="descripcion" id="descripcion" class="form-input" rows="5" placeholder="Escribe la descripcción del producto"></textarea>

                    <p> Seleccione la categoria de su producto</p> <select name="busqueda" id="categoria" class="form-input" >
                        <option value="Electronica">Electronica</option>
                        <option value="Deporte">Deporte</option>
                        <option value="Hogar">Hogar</option>
                    </select>
                    <p>Seleccione el precio inicial</p><input name="precio" id="precio" min="10"  class="form-input" value="" type="number" step="0.01" >
                    <p>Arrastre la foto su producto al siguiente recuadro:</p>
                    <div class="imagenUsuario"   id="caja"></div>
                    <table >
                        <tr>
                            <th><input type="button" id="btnRegistroProducto" value="Enviar"  /> </th>
                            <th><input type="button"  value="Volver" onclick = "location = 'index.jsp'"/></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
