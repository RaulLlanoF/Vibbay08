<%-- 
    Document   : index
    Created on : 26-dic-2016, 18:32:21
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="CSS/indexcss.css" rel="stylesheet" type="text/css">
    </head>
    <body>
        <header>
            <a href="index.jsp">
                <!-- <em><img src="IMG/CoolClips_vc026403.png"/></em>-->
                <em>Vibbay</em>
            </a>
            <nav>
                <div id="emailUsuario">
                        
                </div>
                <ul>
                    <li><a href="inicioSesion.jsp">Acceder</a></li>
                    <li><a href="formularioRegistro.jsp">Registrarse</a></li>
                </ul>
            </nav>
        </header>
        <div class="form">
            <form action="MostrarPrueba.jsp">
                <fieldset>
                    <legend><span class="number"></span> Busque su articulo</legend>
                  <!-- <a href="listaArticulos.jsp" class="formate1"> Pinche aqui para ver todos los articulos a la venta</a> -->
                  Selecione la categoria del producto que desea buscar<select name="categoria" id="categoria" class="form-input" >
                        <option value="Electronica">Electronica</option>
                        <option value="Deporte">Deporte</option>
                        <option value="Hogar">Hogar</option>
                    </select>
                  <input type="submit" value="Buscar">
                    
                </fieldset>
            </form>

        </div>
    </body>
</html>
