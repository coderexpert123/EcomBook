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

    } 


%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="components/common.jsp" %>
        <title>EcomBook | <%= user.getUserName() %></title>
    </head>
    <body>
        <%@include file="components/navbar.jsp" %>

        <style>
            body{

                background-color: lightblue;
            }
        </style>

    <body>

 


<%@include file="components/commonModel.jsp" %>


<section class="vh-100" style="background-color: #eee;">
  <div class="container py-5 h-100">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-md-9 col-lg-7 col-xl-5">
        <div class="card" style="border-radius: 15px; background-color: #93e2bb;">
          <div class="card-body p-4 text-black">
            <div>
               
                <table class="table">

  <tbody>
    <tr>
      <th scope="row">1</th>
      <td>Name </td>
      <td><%= user.getUserName() %></td>
      
    </tr>
    <tr>
      <th scope="row">2</th>
      <td>Email</td>
      <td><%= user.getUserEmail() %></td>
       
    </tr>
    <tr>
      <th scope="row">3</th>
      <td>Phone</td>
      <td><%= user.getUserPic() %></td>
    </tr>
    
    <tr>
      <th scope="row">4</th>
      <td>Address</td>
      <td><%= user.getUserUserAddress() %></td>
    </tr>
  </tbody>
</table>
            </div>
        
            <hr>
           
            <a  href="index.jsp" type="button" class="btn btn-success btn-rounded btn-block btn-lg"><i
                class="far fa-clock me-2"></i>Shop Now</a>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</body>
</html>

