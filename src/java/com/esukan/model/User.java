/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.esukan.model;
import java.io.Serializable;
/**
 *
 * @author adriana
 */
public class User implements Serializable {
    private static final long serialVersionUID = 1L;
    
    private String fullName;
    private String email;
    private String password;
    
    public User(){
    }
    // Create getter
    public String getFullName(){
        return fullName;
    }
    
    public String getEmail(){
        return email;
    }
    
    public String getPassword(){
        return password;
    }
    // Create Setter
    public void setFullName(String fullName){
        this.fullName = fullName;
    }
    
    public void setEmail(String email){
        this.email = email;
    }
    
    public void setPassword(String password){
        this.password = password;
    }
    
}
