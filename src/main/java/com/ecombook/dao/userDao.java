/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecombook.dao;
 
 
import com.ecombook.entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;

public class userDao {
   
    
    private SessionFactory factory;

    public userDao(SessionFactory factory) {
        this.factory = factory;
    }
    
    //get user by email and password 
    
    public User getUserByEmailPassword(String userEmail , String userPassword)
    {
        User user=null;
        
        try {
            
            String query="from User where userEmail=:userEmail and userPassword=:userPassword";
            Session session=this.factory.openSession();
            Query q=session.createQuery(query);
            q.setParameter("userEmail", userEmail);
            q.setParameter("userPassword", userPassword);
            
            user = (User)q.uniqueResult();
            
            session.close();
            
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return user;
        
    }    




}

