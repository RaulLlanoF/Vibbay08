/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

window.onload = empieza;

function empieza() {
    
    revisar();

}
function revisar() {
    document.getElementById("btnRegistroProducto").addEventListener("click", revisionGeneral, false);
    var nombre = document.getElementById("nombreproducto");
    nombre.oninput = function () {
        if (!revisarNombre())
            nombre.className = 'error';
        else
            nombre.className = 'form-input';
    }
    var descripcion = document.getElementById("descripcion");
    descripcion.oninput = function () {
        if (!revisarDescripcion())
            descripcion.className = 'error';
        else
            descripcion.className = 'form-input';
    }
    var precio = document.getElementById("precio");
    precio.oninput = function () {
        if (revisarPrecio())
            precio.className = 'error';
        else
            precio.className = 'form-input';
    }


}
function revisionGeneral() {
    var correcto = true;
    var nombre = document.getElementById("nombreproducto");
    if (!revisarNombre()) {
        correcto = false;
        nombre.className = 'error';
    }
    var descripcion = document.getElementById("descripcion");
    if (!revisarDescripcion()) {
        correcto = false;
        descripcion.className = 'error';
    }
    var precio = document.getElementById("precio");
    if (!revisarPrecio()) {
         alert("mal mal");
       // correcto = false;
        precio.className = 'error';
    }

    if (correcto) {
          alert("11");
        document.getElementById("formRegProducto").submit();
     
      
    }
}

function revisarNombre() {
    var nombre = document.getElementById("nombreproducto");
    var ex = /[A-Za-z]{3,}/;
    if (!ex.test(nombre.value) || nombre.value === "")
        return false;
    else
        return true;
}
function revisarDescripcion() {
    var descripcion = document.getElementById("descripcion");
    var ex = /^[\s\S]{10,20}$/;
    if (!ex.test(descripcion.value) || descripcion.value === "")
        return false;
    else
        return true;
}

function revisarPrecio() {
    var precio = document.getElementById("precio");
    var ex = /^(([1-9]{1}[0-9]{0,2}\.[0-9]{3}\,[0-9]{2})|([0-9]{1,3}\,[0-9]{2}))$/;
    if (!ex.test(precio.value) || precio.value === "")
        return false;
    else
        return true;
}


