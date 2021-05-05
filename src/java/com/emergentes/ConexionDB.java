package com.emergentes;

import java.sql.Connection;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConexionDB {

static String url = "jdbc:mysql://localhost:3306/bd_proyectos";
static String usuario = "root";
static String password = "";
protected Connection conn = null;

public ConexionDB(){
    try { Class.forName("com.mysql.jdbc.Driver");
          conn = DriverManager.getConnection(url, usuario, password);
         } catch (SQLException ex){System.out.println("Error de SQL: " + ex.getMessage());
        } catch (ClassNotFoundException ex) {System.out.println("Falta driver: " + ex.getMessage()); }    
}
    
public Connection conectar() {
        return conn; }
 
    public void desconectar() {
        System.out.println("Cerrar la BD: " + conn);
        try {conn.close();} 
        catch (SQLException ex) {
            System.out.println("Error de SQl: " + ex.getMessage());
        } 
    }  
}