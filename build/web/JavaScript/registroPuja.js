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
    document.getElementById("btnRegistroPuja").addEventListener("click", revisionGeneral, false);
    
    var precio = document.getElementById("puja");
    precio.oninput = function () {
        if (!revisarPrecio())
            precio.className = 'error';
        else
            precio.className = 'form-input';
    }


}
function revisionGeneral() {
    var correcto = true;
    var precio = document.getElementById("puja");
    if (!revisarPrecio()) {
        correcto = false;
        precio.className = 'error';
    }

    if (correcto) {
        document.getElementById("formRegPuja").submit();
     
      
    }
}

function revisarPrecio() {
    var precio = document.getElementById("puja");
    var ex = /^\d{1,8}(\.+\d{2})?$/;
    ///^(([1-9]{1}[0-9]{0,2}\.[0-9]{3}\,[0-9]{2})|([0-9]{1,3}\,[0-9]{2}))$/
    ///^\d+(\.\{1,2})?$/
    // /^\d{1,2}(\.\d{2})?$/ funciona salvo por el valor entero
    if (!ex.test(precio.value) || precio.value === "")
        return false;
    else
        return true;
}
