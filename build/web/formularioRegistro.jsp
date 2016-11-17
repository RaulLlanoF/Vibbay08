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
        <script src="JavaScript/ValidacionRegistro.js" language="javascript" type="text/javascript"></script>
    </head>
    <body>
       
        <div class="form">
            <form action="index.html" method="POST">
                <fieldset>
                    <legend><span class="number"></span> Formulario de Registro</legend>
                    <input type="text"  id="nombre" class="form-input" name="nombre" placeholder="Escribe tu nombre" pattern="[A-Za-z]{3,}" required >
                    <input type="tel" id="telefono" class="form-input" name="telefono" placeholder="Escribe tu telefono"  required>
                    <input type="email" id="email" class="form-input" name="email" placeholder="Escribe tu email *" required>
                    <input type="password" name="contrasena" id="contrasena" class="form-input" placeholder="Escribe tu contraseña" required >
                    <input type="text" name="field5" class="form-input" placeholder="Escribe tu nick">
                    <input type="date" name="field6" class="form-input" id="fechanacimiento" >
                    
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
