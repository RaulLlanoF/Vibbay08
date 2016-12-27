/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;
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
     public static void main(String[] args) {
        Consultas co = new Consultas();
        System.out.println(co.registrar("raul@gmail.com", "raul", "1234", null, 696251477));
    }
    
}
