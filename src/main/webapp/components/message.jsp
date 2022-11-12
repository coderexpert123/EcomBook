<% 

String message=(String)session.getAttribute("message");


if(message!=null){


%>
 <div class="alert alert-success text-center" role="alert">
     <h3>  <%= message %></h3>
</div>
<%

session.removeAttribute("message");
}
%>