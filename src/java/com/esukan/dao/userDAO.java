/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esukan.dao;
import com.esukan.model.User;
import com.esukan.util.DBConnection;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
/**
 *
 * @author adriana
 */
public class userDAO {
    public boolean registerUser(User user){
        String sql = "INSERT INTO users (full_name, email, password) VALUES(?,?,?)";
        boolean isSuccess = false;
        
        try (Connection conn = DBConnection.getConnection();
                PreparedStatement ps = conn.prepareStatement(sql)){
            ps.setString(1, user.getFullName());
            ps.setString(2, user.getEmail());
            ps.setString(3, user.getPassword());
            
            int rowInserted = ps.executeUpdate();
            if(rowInserted >0){
                isSuccess = true;
            }
        } catch (SQLException e){
            e.printStackTrace();
        }
        return isSuccess;
    }
    
}
