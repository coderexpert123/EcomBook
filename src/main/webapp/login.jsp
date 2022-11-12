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
    <title>EcomBook | Login </title>
  </head>
  <body>
       <%@include file="components/navbar.jsp" %>

       
       <!---Login Page --->
       <section class="vh-100" style="background-color: #508bfc;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col-12 col-md-8 col-lg-6 col-xl-5">
        <div class="card shadow-2-strong" style="border-radius: 1rem;">
          <div class="card-body p-5 text-center">

            <h3 class="mb-5">Sign in</h3>
             
            <form action="loginServlet" method="post">
                
    <%@include file="components/message.jsp" %>

            <div class="form-outline mb-4">
              <input type="email" id="typeEmailX-2" name="userEmail" class="form-control form-control-lg" />
              <label class="form-label" for="typeEmailX-2">Email</label>
            </div>

            <div class="form-outline mb-4">
              <input type="password" id="typePasswordX-2" name="userPassword" class="form-control form-control-lg" />
              <label class="form-label" for="typePasswordX-2">Password</label>
            </div>
                
            <button class="btn btn-primary btn-lg btn-block" type="submit">Login</button>

</form>
            
          


            
          </div>
             
        </div>
      </div>
    </div>
  </div>
</section>
       <!---End of Login Page --->
       
      </body>
</html>
