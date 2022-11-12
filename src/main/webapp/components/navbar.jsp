
 <%@page import="com.ecombook.entities.User"%>
    <% 

    User user1=(User)session.getAttribute("current-user");
    
    %>
    

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="index.jsp">EcomBook</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
      </li>
   
     <li class="nav-item active">
        <a class="nav-link" href="about.jsp">About Us</a>
      </li>
        <li class="nav-item active">
        <a class="nav-link" href="contact.jsp">Contact Us</a>
      </li>
    </ul>
      
      
      
 
  </div>
  
  
  
    <ul class="navbar-nav mr-auto">
      
      <% 
      if (user1==null)
         {     
      
            
         
         %>
      
      <li class="nav-item active">
          <a class="nav-link" data-toggle="modal" data-target="#cart">Cart<span class="cart-items"> ( 0 )</span></a>
      </li>
       <li class="nav-item active">
         <a class="nav-link" href="login.jsp">Login </a>
       </li>
            
      <li class="nav-item active">
        <a class="nav-link" href="signup.jsp">Signup</a>
      </li>
         <%
          }
          
          else{

          %>
       <li class="nav-item active">
          <a class="nav-link" data-toggle="modal" data-target="#cart">Cart<span class="cart-items"> ( 0 )</span></a>
      </li>
      
      <li class="nav-item active">
          <a class="nav-link" href="<%= user1.getUserType().equals("admin")? "admin.jsp" : "normaluser.jsp" %>"> <%= user1.getUserName() %> </a>
       </li>
            
    
      
      <li class="nav-item active">
   
          <a  href="logoutServlet"type="button" class="btn btn-warning">Logout</a>
      </li>
          
          <%

          }

      %>
      
   
      
        </ul>
</nav>