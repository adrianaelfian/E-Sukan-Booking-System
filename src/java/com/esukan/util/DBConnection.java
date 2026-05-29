/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esukan.util;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author adriana
 */
public class DBConnection {
    private static final String URL ="jdbc:derby://localhost:1527/ESukanDB";
    private static final String USERNAME ="app";
    private static final String PASSWORD = "app";
    
    public static Connection getConnection(){
        Connection conn = null;
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException | SQLException e){
            e.printStackTrace();
        }
        return conn;
    }   
}
