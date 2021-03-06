/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.sql.*;

/**
 *
 * @author Raúl
 */
public class Consultas extends Conexion {
    public boolean autenticacion(String email, String contrasena){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "Select * from usuario where email=? and contrasena= ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, email);
            pst.setString(2, contrasena);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error"+e);
        }finally{
            try {
                if(getConexion()!= null) getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        return false;
    }
    public boolean cancelarSubasta (int id){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "update articulo set situacion ='vendido' where id =?";
            pst = getConexion().prepareStatement(consulta);
            pst.setInt(1, id);
            pst.executeUpdate();
            
            if(pst.executeUpdate()==1){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error"+e);
        }finally{
            try {
                if(getConexion()!= null) getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        
        return false;
    }
    
    public boolean registrar(String email, String nombre, String contrasena, Date fechanacimiento, int telefono){
        
        PreparedStatement pst = null;
        
        try {
            String consulta = "insert into usuario (email, nombre, contrasena, fechanacimiento, telefono ) values (?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            
            pst.setString(1, email);
            pst.setString(2, nombre);
            pst.setString(3, contrasena);
            pst.setDate(4, fechanacimiento);
            pst.setInt(5, telefono);
            
            if(pst.executeUpdate()== 1){
                return true;
                
            }
            
        } catch (Exception ex) {
            System.err.println("Error" +ex);
        }finally{
            try {
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        
        return false;
    }
    
    public boolean registrarProducto(String correopropietario, String categoria, String descripcion, String nombreproducto, float precio, InputStream foto ){
        
        PreparedStatement pst = null;
        try {
            String consulta = "insert into articulo (correopropietario, categoria, descripcion, nombreproducto, precio, foto) values (?,?,?,?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            
            
            pst.setString(1, correopropietario);
            pst.setString(2, categoria);
            pst.setString(3, descripcion);
            pst.setString(4, nombreproducto);
            pst.setFloat(5, precio);
            pst.setBinaryStream(6, foto);
            if(pst.executeUpdate()== 1){
                return true;
                
            }
            System.out.println("hola");
        } catch (Exception ex) {
            System.err.println("Error" +ex);
            
        }finally{
            try {
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        return false;
    }
  
    
    public boolean registrarPuja(int idproducto, float preciopuja, String pujante){
        PreparedStatement pst = null;
        try {
            String consulta = "insert into pujas (idproducto,preciopuja,pujante) values (?,?,?)";
            pst = getConexion().prepareStatement(consulta);
            
            
            pst.setInt(1, idproducto);
            pst.setFloat(2, preciopuja);
            pst.setString(3, pujante);
            if(pst.executeUpdate()== 1){
                return true;
                
            }
            System.out.println("hola");
        } catch (Exception ex) {
            System.err.println("Error" +ex);
            
        }finally{
            try {
                if(getConexion()!=null) getConexion().close();
                if(pst!=null) pst.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        return false;
    }
    
    public boolean mostrarTodo(){
        PreparedStatement pst = null;
        ResultSet rs = null;
        String correo;
        String nombreproducto;
        
        try {
            String consulta = "Select * from articulo";
            pst = getConexion().prepareStatement(consulta);
            rs = pst.executeQuery();
            while (rs.next()) {
                        correo= rs.getString("correopropietario");
                        nombreproducto =rs.getString("nombreproducto");
            }
            
            if(rs.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error"+e);
        }finally{
            try {
                if(getConexion()!= null) getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        
        return false;
    }
     public boolean busquedaPorCategoria(String categoria){
        PreparedStatement pst = null;
        ResultSet rs = null;
        
        try {
            String consulta = "select nombreproducto,descripcion,categoria, precio, foto from articulo where categoria = ?";
            pst = getConexion().prepareStatement(consulta);
            pst.setString(1, categoria);
            rs = pst.executeQuery();
            
            if(rs.absolute(1)){
                return true;
            }
        } catch (Exception e) {
            System.err.println("Error"+e);
        }finally{
            try {
                if(getConexion()!= null) getConexion().close();
                if(pst != null) pst.close();
                if(rs != null) rs.close();
            } catch (Exception e) {
                System.err.println("Error"+e);
            }
        }
        return false;
    }
    
   
     public static void main(String[] args) {
        Consultas co = new Consultas();
        co.cancelarSubasta(2);
    }
    
}
