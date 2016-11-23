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
        
        
        
    };
     
}



