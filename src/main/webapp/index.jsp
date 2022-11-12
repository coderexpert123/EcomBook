<%@page import="com.ecombook.entities.Category"%>
<%@page import="com.ecombook.dao.CategoryDao"%>
<%@page import="com.ecombook.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecombook.dao.ProductDao"%>
<%@page import="com.ecombook.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file="components/common.jsp" %>
    <title>EcomBook | Online Shop </title>
  </head>
  <body>
       <%@include file="components/navbar.jsp" %>
       
       
       <div class="jumbotron">
  <h1 class="display-4">EcomBook by Nishant Singh</h1>
  <p class="lead">
EcomBook is guided by four principles: customer obsession rather than competitor focus, passion for invention, commitment to operational excellence, and long-term thinking. EcomBook strives to be Earth’s most customer-centric company, Earth’s best employer, and Earth’s safest place to work. Customer reviews, 1-Click shopping, personalized recommendations
and The Climate Pledge are some of the things pioneered by EcomBook.</p>
  <hr class="my-4">
 
</div>
       
       <div class="container">
       
       <!----------fetch product ---->
       
       <% 
       
        String cf=request.getParameter("category"); 
        ProductDao pd=new ProductDao(FactoryProvider.getFactory());
        List<Product> Plists=null;
        
        if (cf==null || cf.trim().equals("all"))
        { 
            Plists=pd.getAllTheProduct();
        }
        else
        {
            int cid=Integer.parseInt(cf.trim());
            Plists=pd.getAllTheProductById(cid);
            
            
        }
         

        CategoryDao ct=new CategoryDao(FactoryProvider.getFactory());
        List<Category> clist=ct.getAllCategory();
        


       %>
       <div class="row">
           
            <!---Show Categories -->
           <div class="col-md-2">
               <div class="list-group">
                   
                   <a href="index.jsp?category=all" class="list-group-item list-group-item-action active">
                        All Products
                      </a>
                          <% 
               
               for(Category category:clist)
               {
               
               %>
               
               
             <a href="index.jsp?category=<%= category.getCategoryId()%>" class="list-group-item list-group-item-action"><%= category.getCategoryTittle() %></a>
              
              
               <%
               }
               
               %>
               
            </div>   
           </div>
               
               
               
               
           <!---Show Product -->
           <div class="col-md-8">
               
              
               <div class="col-mt-4">
                   
                   <div class="col-md-12">
                       
                       
                <div class="card-columns">
                    
                                <% 
               
               for(Product product:Plists)
               {
               
               %>
               
               <div class="card" >
                   
                   <div class="container">
                       
                     <img class="card-img-top" style="max-height: 300px; max-width: 100%; width: auto " src="img/products/<%= product.getpPhoto() %>" alt="Card image cap">
  
                   </div>

                <div class="card-body">
                        
                        <h5 class="card-title"><%= product.getpName() %></h5>
                        <p class="card-text"><%= product.getpDesc() %></p>

                </div>
                        
                <div class="footer mt-4 mb-4 mr-4 ml-4 ">
                            
                    <a class="btn btn-primary mb-2" onclick="addtocart(<%= product.getpId() %>,'<%= product.getpName() %>',<%= product.getpPrice() %>,<%= product.getpQuantity() %> )">Add To Cart</a>
                    <a class="btn btn-danger"> &#8377; <%= product.getpPrice() %> /- <span><%= product.getpDiscoutnt()%> off</span></a>
                   
                </div>
                           
             </div>     
                        

               <% 
                   } 
                    
                   if (Plists.size()==0)
                       {
                       out.println("<p>No Product in this category</p>");
                       
                       }
               %>
                   
                    
  
                    
                 </div>
                       
                       
                   </div>
                   
               </div>
       
               
           </div>
           
       </div>
       
       
       
       <!-- Fetch end product -->
     </div>   

               
               
                    <%@include file="components/commonModel.jsp" %>
      </body>
</html>
