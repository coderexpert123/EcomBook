<%@page import="com.ecombook.dao.userDao"%>
<%@page import="java.util.List"%>
<%@page import="com.ecombook.entities.Category"%>
<%@page import="com.ecombook.helper.FactoryProvider"%>
<%@page import="com.ecombook.dao.CategoryDao"%>
<%@page import="com.ecombook.entities.User"%>
       
    
     

<%

    User user = (User) session.getAttribute("current-user");

    if (user == null) {
        session.setAttribute("message", "Your are not log in Login First");
        response.sendRedirect("login.jsp");
        return;

    } else {

        if (user.getUserType().equals("normal")) {

            session.setAttribute("message", "Your are not Admin");
            response.sendRedirect("login.jsp");
            return;

        }

    }


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/common.jsp" %>
        <title>Admin | Ecombook</title>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>

        <style>
            body{

                background-color: lightblue;
            }
        </style>

    <body>

        <div class="container mt-4">


            <h1 class="alert alert-danger text-center" role="alert">
                Welcome <%= user1.getUserName() %>
                <%@include file="components/message.jsp" %>
            </h1>

        </div>

        <div class="container mt-4">   

<% 
userDao udao=new userDao(FactoryProvider.getFactory());
 
%>
            <div class="card-deck">
                <div class="card ">
                    <img class="card-img-top" src="img/u.png" alt="Card image cap">
                    <div class="card-block container">
                        <h4 class="card-title text-center">100 </h4>
                        <p class="card-text text-center">
                            User
                        </p>

                        <p class="card-text">

                        </p>
                    </div>
                </div>

                <div class="card">
                    <img class="card-img-top" src="img/p.png" alt="Card image cap">

                    <div class="card-block container">
                        <h4 class="card-title text-center">200</h4>
                        <p class="card-text text-center">
                            Category 
                        </p>

                        <p class="card-text">

                        </p>
                    </div>
                </div>

                <div class="card">
                    <img class="card-img-top" src="img/d.png" alt="Card image cap">

                    <div class="card-block container tex">
                        <h4 class="card-title text-center">567</h4>
                        <p class="card-text text-center">
                            Products 
                        </p>

                        <p class="card-text">

                        </p>
                    </div>
                </div>
            </div>

        </div>

        <div class="container mb-4 mt-4">
            <div class="row">
                <div class="col-lg-6 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="img/dd.png" alt="Card image cap">


                        <div class="card-body text-center">
                            <h5 class="card-title">Click on Add the Category</h5>


                            <a href="#" data-toggle="modal" data-target="#exampleModal" class="btn btn-outline-primary btn-sm">
                                Add Category
                            </a>

                        </div>
                    </div>
                </div>
                <div class="col-lg-6 mb-4">
                    <div class="card">
                        <img class="card-img-top" src="img/f.png" alt="Card image cap">


                        <div class="card-body text-center">
                            <h5 class="card-title"> Click on Add the product</h5>


                            <a href="#" data-toggle="modal" data-target="#productModal" class="btn btn-outline-primary btn-sm">
                                Add Product
                            </a>

                        </div>
                    </div>
                </div>
            </div>
        </div>

 
 

<!-- Category Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header text-center">
        <h5 class="modal-title " id="exampleModalLabel">Category | EcomBook</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
       
          
 <form action="postoperationservlet" method="post">
     

     
  <div class="form-group">
   <input type="hidden" name="operation" value="addcategory">
      
    <label for="exampleInputEmail1">Category Name</label>
    <input type="text" name="cname" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">Write Your Category name here.</small>
  </div>
     
    <div class="form-group">
        
    <label for="exampleFormControlTextarea1"> Category Description</label>
    <textarea class="form-control" name="categorydesc" id="exampleFormControlTextarea1" rows="3"></textarea>
  
    </div>
     
     <div class="text-center">
         
         <button type="submit" class="btn btn-primary">Submit</button>
     </div> 
  
</form>
          
 </div>
    
    </div>
  </div>
</div>



<%@include file="components/commonModel.jsp" %>


<!-- Product  modal -->
 
<div class="modal fade" id="productModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        
          
          
          
          
<form action="postoperationservlet" method="post" enctype='multipart/form-data'>
   

    
 <input type="hidden" name="operation" value="addpost">

<select class="form-control" name="cateId">  
<option selected disabled="none">Choose Your Category</option>   

     <% 

            CategoryDao cdaos=new CategoryDao(FactoryProvider.getFactory());
            List<Category> list=cdaos.getAllCategory();


            for(Category c:list)
            {    
            %>
            <option value="<%= c.getCategoryId() %>"><%= c.getCategoryTittle() %></option>

     <% 
         } 
     %>

  </select>
     
   <div class="form-group">
    <label for="exampleFormControlInput1">Product Tittle</label>
    <input type="text" class="form-control" 
    id="exampleFormControlInput1" name="pTittle" placeholder="Enter Tittle of Product">
  </div>
         
              
  <div class="form-group">
    <label for="exampleFormControlTextarea1">Product Description</label>
    <textarea class="form-control" name="pDesc" id="exampleFormControlTextarea1" rows="3"></textarea>
  </div>
   
    
   <div class="form-group">
    <label for="exampleFormControlInput1">Product Price</label>
    <input type="text" class="form-control" 
    id="exampleFormControlInput1" name="pPrice" placeholder="Enter Price of Product">
  </div>
          
              
              
   <div class="form-group">
    <label for="exampleFormControlInput1">Product Discount</label>
    <input type="text" class="form-control" 
    id="exampleFormControlInput1" name="pDiscount" placeholder="Enter Discount of Product">
  </div>
              
   <div class="form-group">
    <label for="exampleFormControlInput1">Product Quantity</label>
    <input type="text" class="form-control" name="pQuantity"
           
    id="exampleFormControlInput1" placeholder="Enter Quantity of Product">
  </div>
              
  

   
      
              
 <div class="form-group">
    <label for="exampleFormControlFile1">Product Images</label>
    <input type="file" class="form-control-file" name="pImage" id="exampleFormControlFile1">
  </div>
              
    
      <div class="text-center" >
        <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
        <button type="submit" class="btn btn-danger">Save changes</button>
      </div>           

</form>
          
          
          
</div>
   
    </div>
  </div>
</div>



</body>
</html>

