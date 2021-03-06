/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

var indexedDB = window.indexedDB || window.webkitIndexedDB;
var dataBase = null;

function startDB(){
    
     dataBase = indexedDB.open('colegio', 1);
    
     
     dataBase.onupgradeneeded = function(e){
         
         var active = dataBase.result;
         var object = active.createObjectStore('people',{keyPath: 'id',autoIncrement : true});
         object.createIndex('by_name','name',{unique: false});
         object.createIndex('by_dni','dni', {unique : true});
         
     };
     
     dataBase.onsuccess = function(e){
         alert('Database loaded');
         loadAll();
     };
     
     dataBase.onerror = function(e){
         alert('Error loading Database');
         
     };
    
        
}
function add(){
    var active = dataBase.result;
    var data = active.transaction(["people"],"readwrite");
    var object = data.objectStore("people");
    
    var request = object.put({
        dni: document.querySelector("#dni").value,
        name: document.querySelector("#name").value,
        surname: document.querySelector("#surname").value
    });
    
    request.onerror = function(e){
        
        alert(request.error.name + '\n\n' + request.error.message);
        
        
                
    };
    data.oncomplete = function(e){
        document.querySelector("#dni").value ='';
        document.querySelector("#name").value ='';
        document.querySelector("#surname").value ='';
        alert("Objeto añadido correctamente");
        loadAll();
        
        
        
    };
     
}
function load(id){
    var active = dataBase.result;
    var data = active.transaction(["people"], "readonly");
    var object = data.objectStore("people");
    
    
    var request = object.get(parseInt(id));
    
    request.onsuccess = function(){
        
        var result = request.result;
        
        if(result !== undefined){
          alert("ID: " + result.id + "\n\
                   DNI " + result.dni + "\n\
                   Name: " + result.name + "\n\
                   Surname: " + result.surname);

        }
    }
    
    
}
        function loadByDni(dni) {
        var active = dataBase.result;
        var data = active.transaction(["people"], "readonly");
        var object = data.objectStore("people");
        var index = object.index("by_dni");
        var request = index.get(String(dni));

        request.onsuccess = function () {
            var result = request.result;

            if (result !== undefined) {
                alert("ID: " + result.id + "\n\
                       DNI " + result.dni + "\n\
                       Name: " + result.name + "\n\
                       Surname: " + result.surname);
            }
        };
    }



function loadAll(){
    var active = dataBase.result;
    var data = active.transaction(["people"], "readonly");
    var object = data.objectStore("people");
    var elements =[];
    
    object.openCursor().onsuccess = function (e){
        var result = e.target.result;
        
        if(result == null){
            return;
        }
        elements.push(result.value);
        result.continue();
     
    };
    
    data.oncomplete = function(){
        var outerHTML = '';
        
        for (var key in elements){
            outerHTML += '\n\
            <tr>\n\
            <td>' + elements[key].dni + '</td>\n\
            <td>' + elements[key].name +'</td>\n\
            <td>\n\
            <button type="button" onclick="load('+ elements[key].id +');">Details</button>\n\
            <button type="button" onclick="loadByDni('+ elements[key].dni +');">DetailsDNI</button>\n\
            </td>\n\
            </tr>';
        }
        elements =[];
        document.querySelector("#elementsList").innerHTML = outerHTML;
    }
    
    
}

    function loadAllByName() {
        var active = dataBase.result;
        var data = active.transaction(["people"], "readonly");
        var object = data.objectStore("people");
        var index = object.index("by_name");

        var elements = [];

        index.openCursor().onsuccess = function (e) {

            var result = e.target.result;

            if (result === null) {
                return;
            }

            elements.push(result.value);
            result.continue();

        };

        data.oncomplete = function () {

            var outerHTML = '';

            for (var key in elements) {

                outerHTML += '\n\
                <tr>\n\
                    <td>' + elements[key].dni + '</td>\n\
                    <td>' + elements[key].name + '</td>\n\
                    <td>\n\
                        <button type="button" onclick="load(' + elements[key].id + ')">Details</button>\n\
                        <button type="button" onclick="loadByDni(' + elements[key].dni + ')">Details DNI</button>\n\
                    </td>\n\
                </tr>';

            }

            elements = [];
            document.querySelector("#elementsList").innerHTML = outerHTML;
        };
    }



