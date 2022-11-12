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
    <title>EcomBook | Signup</title>
  </head>
  <body>
       <%@include file="components/navbar.jsp" %>
       
       
        <!---Start of Signup Page --->
        <div class="container">
            
            
     
                    <section class="h-100 h-custom" style="background-color: #8fc4b7;">
                      <div class="container py-5 h-100">
                        <div class="row d-flex justify-content-center align-items-center h-100">
                          <div class="col-lg-8 col-xl-6">
                            <div class="card rounded-3">
                              <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/img3.webp"
                                class="w-100" style="border-top-left-radius: .3rem; border-top-right-radius: .3rem;"
                                alt="Sample photo">
                              <div class="card-body p-4 p-md-5">
                                <h3 class="mb-4 pb-2 pb-md-0 mb-md-5 px-md-2">Register your profile here..</h3>
                                 
                               
                                
                                
                                <form action="RegisterServlet" method="post" class="px-md-2">

                                     <%@include file="components/message.jsp" %>
                                     
                                  <div class="form-outline mb-4">
                                    <input type="email" name="email" id="form3Example1q" class="form-control" />
                                    <label class="form-label" for="form3Example1q">User Email</label>
                                  </div>

                                  <div class="form-outline mb-4">
                                    <input type="text" name="name" id="form3Example1q" class="form-control" />
                                    <label class="form-label" for="form3Example1q">User Name</label>
                                  </div>
                            
                                    
                                 <div class="form-outline mb-4">
                                    <input type="text" name="password" id="form3Example1q" class="form-control" />
                                    <label class="form-label" for="form3Example1q">User Password</label>
                                  </div>
                                    
                                    
                                  

                                  <div class="form-outline mb-4">
                                    <input type="number" name="phone" id="form3Example1q" class="form-control" />
                                    <label class="form-label" for="form3Example1q">User Phone</label>
                                  </div>
                                    

                                  <div class="form-outline mb-4">
                                    <input type="text" id="form3Example1q" name="address" class="form-control" />
                                    <label class="form-label" for="form3Example1q">User Address</label>
                                  </div>
                                    
                                     <div class="form-group">
                                    <label for="exampleFormControlFile1">Your Profile Pic </label>
                                    <input type="file" name="pic" class="form-control-file" id="exampleFormControlFile1">
                                  </div>
                                    
                                    <hr>
                                    <div class="container text-center">
                                             <button type="submit" class="btn btn-danger btn-lg mb-1">Register</button>

                                    </div>

                                </form>

                              </div>
                            </div>
                          </div>
                        </div>
                      </div>
                    </section>
            
</div>


 <!---End of Singup Page --->
      </body>
</html>
