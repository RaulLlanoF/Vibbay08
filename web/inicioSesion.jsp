<%-- 
    Document   : inicioSesion
    Created on : 17-nov-2016, 15:57:26
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="CSS/inicioSesionCss.css" type="text/css" rel="stylesheet" >
        <link href="CSS/indexcss.css" type="text/css" rel="stylesheet">
        <script src="JavaScript/ValidacionInicioSesion.js" language="javascript" type="text/javascript">  </script>
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
            <form action="index.html" method="POST">
                <fieldset>
                    <legend><span class="number"></span> Inicia Sesion</legend>
                    <input type="email" id="email" class="form-input" name="email" placeholder="Escribe tu email *" required>
                    <input type="password" name="contrasena" id="contrasena" class="form-input" placeholder="Escribe tu contraseña" required >                    
                    <table >
                        <tr>
                            <th><input type="submit" value="Enviar" id="btnInicio"  /> </th>
                            <th><input type="submit" value="Volver" onclick = "location='index.html'"/></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
