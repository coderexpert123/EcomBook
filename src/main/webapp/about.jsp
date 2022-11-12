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
    <title>EcomBook | Abouts Us </title>
  </head>
  <body>
   <%@include file="components/navbar.jsp" %>
       
       
       
        

    <main role="main">

      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner">
          <div class="carousel-item active">
            <img class="first-slide" src="img/c.jpg" alt="First slide">
            <div class="container">
              <div class="carousel-caption text-left">
                   </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="second-slide" src="img/c.jpg" alt="Second slide">
            <div class="container">
              <div class="carousel-caption">
                   </div>
            </div>
          </div>
          <div class="carousel-item">
            <img class="third-slide" src="img/c.jpg" alt="Third slide">
            <div class="container">
              <div class="carousel-caption text-right">
                 </div>
            </div>
          </div>
        </div>
        <a class="carousel-control-prev" href="#myCarousel" role="button" data-slide="prev">
          <span class="carousel-control-prev-icon" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="carousel-control-next" href="#myCarousel" role="button" data-slide="next">
          <span class="carousel-control-next-icon" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>
      </div>

        <div class="container">
            <div class="card">
            
                <p class="mb-2 mt-4 mr-4 ml-4">EcomBook is guided by four principles: customer obsession rather than competitor focus, passion for invention, commitment to operational excellence, and long-term thinking. EcomBook strives to be Earth’s most customer-centric company, Earth’s best employer, and Earth’s safest place to work. Customer reviews, 1-Click shopping, personalized recommendations
and The Climate Pledge are some of the things pioneered by EcomBook.</p>
            </div>
            
        </div>
            
        

      </body>
</html>
