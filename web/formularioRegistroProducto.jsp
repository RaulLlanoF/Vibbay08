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
    </head>
    <body>
        <div class="form">
            <form action="index.html">
                <fieldset>
                    <legend><span class="number"></span> Formulario de Registro De Articulo</legend>
                    <input type="text" name="field1" placeholder="Escribe el nombre del producto" required >
                    <input type="number" name="field2" placeholder="Escribe un precio" required>
                    <textarea name="field3" placeholder="Escribe la descripcción del producto"></textarea>
                    <%-- falta decidir como se va a hacer lo de la foto --%>
                    <input type="file" name="field4"  >
                    <table >
                        <tr>
                            <th><input type="submit" value="Enviar"  /> </th>
                            <th><input type="submit" value="Volver" onclick = "location='index.html'"/></th>
                        </tr>
                    </table>
                </fieldset>
            </form>
        </div>
    </body>
</html>
