<%-- 
    Document   : listaArticulos
    Created on : 26-dic-2016, 18:34:05
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/cabeceraCss.css" rel="stylesheet" type="text/css">
        <link href="CSS/listaArticulosCss.css" rel="stylesheet" type="text/css">
        <script type="text/javascript" src="JavaScript/paginaListaArticulos.js"></script>
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
                    <li><a href="inicioSesion.jsp">Acceder</a></li>
                    <li><a href="formularioRegistro.jsp">Registrarse</a></li>
                </ul>
            </nav>
        </header>
        <div class="form">
            <div id="elements">
                <table>
                    <legend><span class="number"></span> Aqui tiene los articulos disponibles en este momento</legend>
                    <thead>
                        <tr>
                            <th>Nombre Articulo</th>
                            <th>Precio</th>
                            <th> </th>
                        </tr>
                    </thead>
                    <tbody id="elementsList">
                        <tr>
                            <td colspan="3">Not elements to show</td>
                        </tr>
                    </tbody>
                </table>
            </div>
            <div class="prueba">
                <table>
                    <tr>
                        <th><button type="button" class="botones" id="btndeporte"  >Categoria deporte</button></th>
                        <th><button type="button" class="botones" id="btnelectronica"  >Categoria electronica</button></th>
                        <th> <button type="button" class="botones" id="btnhogar"  >Categoria hogar</button></th>
                    </tr>
                </table>
            </div>
        </div>


    </body>
</html>
