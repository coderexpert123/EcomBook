<%@page import="com.ecombook.entities.Category"%>
<%@page import="com.ecombook.dao.CategoryDao"%>
<%@page import="com.ecombook.entities.Product"%>
<%@page import="java.util.List"%>
<%@page import="com.ecombook.dao.ProductDao"%>
<%@page import="com.ecombook.helper.FactoryProvider"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>



<%

    User user = (User) session.getAttribute("current-user");

    if (user == null) {
        session.setAttribute("message", "Your are not log in Login First");
        response.sendRedirect("login.jsp");
        return;

    }
    
    %>
    

<!DOCTYPE html>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <%@include file="components/common.jsp" %>
    <title>EcomBook | Checkout </title>
  </head>
  <body>
       <%@include file="components/navbar.jsp" %>
       <%@include file="components/commonModel.jsp" %>
       
 
       <div class="container">
           
           <div class="row">
              <div class="col-md-6"> 
                  <div class="card mt-4">
                      <h4 class="text-center">Selected Product : </h4>
                  <div class="cart-body"></div>
                  </div>
              </div>
              <div class="col-md-6"> 
                  <div class="card mt-4">
                      <h4 class="text-center">Your Address </h4>
                      <div class="container">
                          
 <form>
     
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%= user.getUserEmail() %>">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
   <div class="form-group">                     
   <label for="exampleInputEmail1">Your Name</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" value="<%= user.getUserName() %>">
   </div>
                      
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Your address</label>
    <textarea class="form-control" id="exampleFormControlTextarea1" rows="3"  ></textarea>
  </div>
  
   <div class="form-group">
      <label for="inputState">Payment</label>
      <select id="inputState" class="form-control">
        <option selected>Cash On Delivery</option>
        
      </select>
    </div>       

   <a href="index.jsp" type="button" class="btn btn-danger mb-2">Continue Shoping</a>
  <button type="submit" class="btn btn-primary mb-2">Order Now</button>
 </form>
            
                     
              </div>                 
              </div>
           </div>
           <div>
               
           </div>
           
       </div>
       
      </body>
</html>
