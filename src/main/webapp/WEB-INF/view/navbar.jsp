<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>

    <style>

.dropbtn { 
    color: white;
    padding: 16px;
    font-size: 10px;
    font-style: bold;
    border: none;
    cursor: pointer;
      display: inline-block;
    padding: 15px 25px;
    font-size: 24px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    outline: none;
    color: #fff;
    background-color: black;
    border: none;
    border-radius: 15px;
    box-shadow: 0 9px #999;
       
}

.dropbtn:hover{
        background-color: grey;
        
     color:white; 
}

.dropdown {
    position: relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position: absolute;
    background-color: #f9f9f9;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
    cursor: pointer
}

.dropbtn:active {
  background-color: #3e8e41;
  box-shadow: 0 5px #666;
  transform: translateY(4px);
}


.dropdown-content a {
    color: black;
    padding: 12px 16px;
    text-decoration: none;
    display: block;
    
}

.dropdown-content a:hover {background-color: #f1f1f1}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
   color: white;
    padding: 16px;
    font-size: 10px;
    font-style: bold;
    border: none;
    cursor: pointer;
      display: inline-block;
    padding: 15px 25px;
    font-size: 24px;
    cursor: pointer;
    text-align: center;
    text-decoration: none;
    outline: none;
    color: #fff;
    background-color: black;
    border: none;
    border-radius: 15px;
    box-shadow: 0 9px #999;
}

.NavBar{  
    background-color:white;
    color:black;
    margin:20px;
}
.space{ 
    width:450px;
    display:inline-block;

 
} 
    </style>
    
  
    <body>
    <div class="NavBar">
    
 <div class="space"></div>
    <a href="/home">    <button class="dropbtn">Home </button></a> 
            
            
 <div class="dropdown">
  <button class="dropbtn">Enquiry</button>
  <div class="dropdown-content">
    <a href="/placeEnquiry">Place Enquiry</a>
    <a href="/showEnquiry">View Enquiries</a>
    </div>
    </div>
            
 <div class="dropdown">
  <button class="dropbtn">Orders</button>
  <div class="dropdown-content">
   <a href="/deliveryDetails">Confirm Order</a>
    <a href="/showOrder">Show Orders</a>
    <a href="/selectOrder">Show Order Items</a>
    <a href="/returnItems">Return Products</a>
    <a href="/cancelledOrders">Cancelled Orders</a>
    <a href="/viewReturns">Show returned products</a>
    </div>
    </div>

    <a href="/showDelivery">    <button class="dropbtn"> Deliveries </button></a> 
    
  <div class="dropdown">
  <button class="dropbtn">Manage Clients</button>
  <div class="dropdown-content">
    <a href="/registerClient">Register Client</a>
    <a href="/manageAccount">Manage Clients</a>
     <a href="/clientHistory">View Client History</a>
    </div>
    </div>
         
          
     
      </div>
      <hr /> 
    </body>
</html>
