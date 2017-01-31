<%-- 
    Document   : PruebaIndexedDB
    Created on : 26-dic-2016, 18:38:15
    Author     : Raúl
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <script type="text/javascript" src="JavaScript/IndexedDB.js"></script>
    </head>
    <body onload="startDB();">
        <input type="text" id="dni" placeholder="Enter Dni">
        <input type="text" id="name" placeholder="Enter Name">
        <input type="text" id="surname" placeholder="Enter Subname">
        <button type="button" onclick="add();">Save</button>
        <div id="elements">
            <table>
            <caption>Persons</caption>
            <thead>
                <tr>
                    <th>DNI</th>
                    <th>Name</th>
                    <th></th>
            </thead>
            <tbody id="elementsList">
                <tr>
                    <td colspan="3">
                        Not elements to show
                    </td>
                        
                </tr>
            </tbody>
            </table>
        </div>
        <button type="button" onclick="loadAllByName();">Order by name</button>
    </body>
</html>
