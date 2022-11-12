/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.ecombook.dao;

import com.ecombook.entities.Product;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

/**
 *
 * @author Nishant Singh
 */
public class ProductDao {
    
     private SessionFactory factory;

    public ProductDao(SessionFactory factory) {
        this.factory = factory;
    }
     
    public boolean saveProduct(Product product){
        boolean f=false;
        
        
        try {
            
            Session sesion=this.factory.openSession();   
            Transaction tx=sesion.beginTransaction();
               
            sesion.save(product);
            
     
            tx.commit();
            sesion.close();
            f=true;
            
            
        } catch (Exception e) {
            e.printStackTrace();
            f=false;
            
     
        }
        return f;
        
    }

//Get all the products 


        public List<Product> getAllTheProduct(){

                Session s=this.factory.openSession();
                Query q=s.createQuery("from Product");
                List<Product> list=q.list();
                return list;
       
        }    
    
//Get all the products By Cat ID
 public List<Product> getAllTheProductById(int cid){

                Session s=this.factory.openSession();
                Query q=s.createQuery("from Product as p where p.category.categoryId =: id");
                q.setParameter("id", cid);
                
                
                
                
                List<Product> list=q.list();
                return list;
       
        }    
}
