/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author LENOVO
 */
public class koneksi {
    private static Connection con;
    
    public static Connection getConnection(){
        if (con==null){
            try{
                String url = "jdbc:MySQL://localhost:3306/rental_pc";
                String user = "root";
                String pass = "";
                DriverManager.registerDriver (new com.mysql.cj.jdbc.Driver());
                con = (Connection)DriverManager.getConnection(url,user,pass);
            
            } catch(Exception e){
                Logger.getLogger(koneksi.class.getName()).log(Level.SEVERE,null,e);
            }
        }
        return con;
    }
    
}
