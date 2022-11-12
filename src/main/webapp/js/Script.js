 function addtocart(pId,pName,pQuantity,pPrice){
  
        let cart=localStorage.getItem("cart");
        let products=[];
        
        //First time product is added in the cart 
        if(cart == null){
            
            
            let product={pId:pId,pName:pName,pQuantity:pQuantity,pPrice:pPrice};
            products.push(product);
            localStorage.setItem("cart",JSON.stringify(products));
            
            console.log("Product is added for the 1st time");
            
         //Product is allredy added in the cart    
            
            }else{
            
            
            let pCart=JSON.parse(cart);
            let oldProduct= pCart.find((item)=>item.pId==pId);
           
            if(oldProduct){
                
                 //increses the quantitiy   
                 oldProduct.pQuantity=oldProduct.pQuantity+1;
                 pCart.map((item)=>{
                     
                     if(item.pId==oldProduct.pId)
                     {
                         item.pQuantity=oldProduct.pQuantity;
                         
                     }
                 });
                localStorage.setItem("cart",JSON.stringify(pCart));
                console.log("Product is incresed");
                
            }else{
                
                //add the quantitiy 
                
                let product={pId:pId,pName:pName,pQuantity:pQuantity,pPrice:pPrice};
  
                 products.push(product);
                
                localStorage.setItem("cart",JSON.stringify(products));

                console.log("new  Product is added");
            
            }


        }
       upDateCart();
       
        
    };
    
    
    
    //function for update the cart 
    
    function upDateCart(){
        let cartString=localStorage.getItem("cart");
        let cart=JSON.parse(cartString);
        if(cart==null || cart.length==0){
            
            console.log("Your cart is Empty");
            $(".cart-items").html("( 0 )");
            $(".cart-body").html("<h1>No item !</h1>");
            $(".btncheckout").addClass('disabled',true);
            
            
            
        }else{
            
            console.log(cart);
            
            $(".cart-items").html(`(${cart.length})`);
            
            let table=`

<table class="table">
  <thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">Name</th>
      
      <th scope="col">Price</th>
 
      <th scope="col">Action</th>
            
    </tr>
  </thead>
  


            `;
            
            
            cart.map((item)=>{
                
                table+=`
                <tr>
                <td> ${item.pId} </td>
                <td> ${item.pName}</td>
               
                <td> ${item.pPrice} </td>
                <td> <button type="button" class="btn btn-danger">Remove</button> </td>
               
                </tr>

                `
            });
            
            table=table+`</table>`;
            $(".cart-body").html(table);
            $(".btncheckout").removeClass('disabled',false);

            
            
        }
        
    }
    
    
   $(document).ready(function(){
        upDateCart();
   });
   
 
    
   
 // functon for goToCheckout
 function goToCheckout(){
     
     window.location="checkout.jsp";
     
 }