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
public class Conexion {
    private Connection con;
    
    public Conexion(){
        try {
            Class.forName("com.mysql.jdbc.Driver");
                con = DriverManager.getConnection("jdbc:mysql://localhost:3306/vibbay08", "root", "admin");
                System.out.println("Se ha conectado.");
        } catch (ClassNotFoundException e) {
            System.err.println("ERROR"+e);
            
        } catch (SQLException e){
            System.err.println("Error"+e);
        }
    }
    
    public Connection getConexion(){
        return con;
    }
      public static void main(String[] args){
        Conexion con = new Conexion();
    }
}
    
    

