
package com.ecombook.dao;

import com.ecombook.entities.Category;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.query.Query;

 
public class CategoryDao {
    
    private SessionFactory factory;

    public CategoryDao(SessionFactory factory) {
        this.factory = factory;
    }
    //Function for add the category 
    public int saveCAtegort(Category cat){
        
       
            Session sesion=this.factory.openSession();   
            Transaction tx=sesion.beginTransaction();
               
            int catid=(int)sesion.save(cat);
                
            
            tx.commit();
            sesion.close();
            
            return catid;
            
       
        
       
        
    }
      
    
    //Get all the  Category 
    
    public List<Category> getAllCategory(){
            Session sesion=this.factory.openSession();   
                Query query=sesion.createQuery("from Category");
                List<Category>list=query.list();
                           
                return list;
              
    }
    
    public Category getCategoryById(int cid){
        
        Category cat=null;
        try {
            Session session=this.factory.openSession();
            cat=session.get(Category.class, cid);
            session.close();
                    
            
        } catch (Exception e) {
            
            e.printStackTrace();
        }
        
        return cat;
        
    }
    
}
