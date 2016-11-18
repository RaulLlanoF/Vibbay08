<%-- 
    Document   : formularioRegistro
    Created on : 15-nov-2016, 14:39:59
    Author     : Raúl
    Fuente: https://www.sanwebe.com/2014/08/css-html-forms-designs nº 5
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="CSS/formularioRegistroCss.css" >
        <link href="CSS/indexcss.css" type="text/css" rel="stylesheet">
        <script src="JavaScript/ValidacionRegistro.js" language="javascript" type="text/javascript"></script>
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
                    <legend><span class="number"></span> Formulario de Registro</legend>
                    <input type="text"  id="nombre" class="form-input" name="nombre" placeholder="Escribe tu nombre" pattern="[A-Za-z]{3,}" required >
                    <input type="tel" id="telefono" class="form-input" name="telefono" placeholder="Escribe tu telefono"  required>
                    <input type="email" id="email" class="form-input" name="email" placeholder="Escribe tu email *" required>
                    <input type="password" name="contrasena" id="contrasena" class="form-input" placeholder="Escribe tu contraseña" required >
                    <input type="text" name="field5" class="form-input" placeholder="Escribe tu nick">
                    <input type="date" name="field6" class="form-input" id="fechanacimiento" required >
                    
                    <table >
                        <tr>
                            <th><input type="submit" value="Enviar" id="btnRegistro"  /> </th>
                            <th><input type="submit" value="Volver" onclick = "location='index.html'"/></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
       
    </body>
</html>
