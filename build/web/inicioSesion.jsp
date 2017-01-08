<%-- 
    Document   : inicioSesion
    Created on : 26-dic-2016, 18:34:53
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inicio Sesion</title>
        <link href="CSS/inicioSesionCss.css" type="text/css" rel="stylesheet" >
        <link href="CSS/cabeceraCss.css" type="text/css" rel="stylesheet">
        <script src="JavaScript/ValidacionInicioSesion.js" language="javascript" type="text/javascript">  </script>
        <!--<script  src="JavaScript/BaseDeDatos.js" language="javascript" type="text/javascript"></script>-->
        <!--<script  src="JavaScript/localStorage.js" language="javascript" type="text/javascript"></script>-->
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
            <form action="iniciar" method="POST" id="formRegUsuario">
                <fieldset>
                    <legend><span class="number"></span> Inicia Sesion</legend>
                    Email<input type="email" id="email" class="form-input" name="email" placeholder="Escribe tu email *" required>
                    Contraseña<input type="password" name="contrasena" id="contrasena" class="form-input" placeholder="Escribe tu contraseña" required >                    
                    <table >
                        <tr>
                            <th><input type="button" value="Enviar" id="btnInicio"    /> </th>
                            <th><input type="button" value="Volver" onclick = "location='index.jsp'"/></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>

