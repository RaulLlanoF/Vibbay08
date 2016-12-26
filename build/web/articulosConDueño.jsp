<%-- 
    Document   : articulosConDueño
    Created on : 26-dic-2016, 18:37:36
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="CSS/cabeceraCss.css" rel="stylesheet" type="text/css">
        <link href="CSS/listaArticulosCss.css" rel="stylesheet" type="text/css"> 
        <script type="text/javascript" src="JavaScript/paginaArticulosConDueño.js"></script>
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
                    <li><a href="MenuUsuario.jsp">Volver Al Menu</a></li>

                </ul>
            </nav>
        </header>

        <div class="form">
            <div id="elements">
                <table>
                    <caption>Articulos</caption>
                    <thead>
                        <tr>
                            <th>Nombre Articulo</th>
                            <th>Precio</th>
                            <th>Descripcion</th>
                            <th>Categoria</th>
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
            <button type="button" class="botones" id="btnordenar" >Ordenar por categoria</button>
        </div>



    </body>
</html>

