<%-- 
    Document   : MenuUsuario
    Created on : 26-dic-2016, 18:38:48
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="CSS/cabeceraCss.css" type="text/css" rel="stylesheet">
        <link href="CSS/cssMenu.css" type="text/css" rel="stylesheet">
        <script type="text/javascript" src="JavaScript/cerrarSesion.js"></script>
    <body>
        <header>
        <a href="index.jsp">
            <!-- <em><img src="IMG/CoolClips_vc026403.png"/></em>-->
                <em>Vibbay</em>
            </a>
            <nav>  
                
                <ul>
                    <li>Bienvenido! <script type="text/javascript"> var nombreSesion = sessionStorage.getItem("email");document.writeln(nombreSesion);</script></li>
                    <li><button type="button"  id="link" >Cerrar Sesión</button></li>
                   
                   
                   
                </ul>
            </nav>
        </header>
        <ul class="form">
            <li><a class="profile" href="articulosConDueño.jsp"><i class="icon-user"></i>Mis Productos</a></li>
        <li ><a class="messages" href="formularioRegistroProducto.jsp">Subastar Objeto</a></li>
        
	
</ul>
 
        
      
    </body>
</html>

