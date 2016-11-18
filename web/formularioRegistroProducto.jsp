<%-- 
    Document   : formularioRegistroProducto
    Created on : 15-nov-2016, 17:16:03
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/formularioRegistroProductoCss.css">
        <script type="text/javascript" src="JavaScript/dragAndDrop1.js"></script>
        <link href="CSS/cabeceraCss.css" type="text/css" rel="stylesheet">
    </head>
    <body>
        <header>
        <a href="index.html">
            <!-- <em><img src="IMG/CoolClips_vc026403.png"/></em>-->
                <em>Vibbay</em>
            </a>
            <nav>
                <ul>
                    <li><a href="inicioSesion.jsp">Acceder</a></li>
                   <li><a href="formularioRegistro.jsp">Registrarse</a></li>
                </ul>
            </nav>
        </header>
        <div class="form">
            <form action="index.html">
                <fieldset>
                    <legend><span class="number"></span> Formulario de Registro De Articulo</legend>
                    <input type="text" name="nombreproducto" id="nombreproducto" placeholder="Escribe el nombre del producto" required >
                    <textarea name="descripcion" id="descripcion" rows="5" placeholder="Escribe la descripcción del producto"></textarea>
                    <%-- falta decidir como se va a hacer lo de la foto --%>
                    <p> Seleccione la categoria de su producto</p> <select name="busqueda" id="busqueda" class="form-input" id="busqueda">
                        <option value="Electronica">Electronica</option>
                        <option value="Deporte">Deporte</option>
                        <option value="Hogar">Hogar</option>
                    </select>
                    <p>Seleccione el precio inicial</p><input name="precio" id="precio" min="10"  class="form-input" value="" type="number" step="0.01" >
                    <p>Arrastre la foto su producto al siguiente recuadro:</p>
                    <div class="imagenUsuario"   id="caja"></div>
                    <table >
                        <tr>
                            <th><input type="submit" id="btnRegistroProducto" value="Enviar"  /> </th>
                            <th><input type="submit"  value="Volver" onclick = "location='index.html'"/></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
