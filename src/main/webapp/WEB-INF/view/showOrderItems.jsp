<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE HTML>
<html>
<head>
    <title>place Order</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
</head>
<style>
.main{
  
    font-family: "Arial";
    height:700px;
   font-size: 25px;
    position: relative;
    top:100px;
    left:100px;
}

.main input{
    height:20px;
        width:500px;
        border:3px solid purple;
        border-radius:3px;
  
}



.main select{
      border:3px solid purple;
     border-radius:3px;
    
}

.layout {
    height:800px;
    width:1000px;
  left:15%;
    position:absolute;
    background-color:white;
}

 

.flow {
    min-height: 700px;
    width:1000px;
    margin-top: 20px;
  left:15%;
    position:absolute;
    background-color:white;
}
 

.bordermain{
    left:30px;
    
    
    
}

table {
  border-collapse: collapse;
  width: 100%;
}

th, td {
  padding: 8px;
  text-align: left;
  border-bottom: 1px solid #ddd;
}

th {
    background-color: black;
    color:white;
    font-style: bold;
}
tr:hover {background-color: #f5f5f5;}

tr:nth-child(even) {background-color: #f2f2f2;}


.clickbtn {
  display: inline-block;
  border-radius: 4px;
  background-color: black;
  border: none;
  color: #FFFFFF;
  height: 30px;
  text-align: center;
  font-size: 13px;
  padding: 20px;
  width: 150px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}

.clickbtn span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}

.clickbtn span:after {
  content: '\00bb';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}

.clickbtn:hover  {
  background-color: red;
  
}


.clickbtn:hover span {
  padding-right: 25px;
  
}

.clickbtn:hover span:after {
  opacity: 1;
  right: 0;
}
input[type=text] {
  border: none;
  border-bottom: 2px solid black;
}
select {
  width: 100%;
  padding: 16px 20px;
  border: none;
  border-radius: 4px;
  background-color: #f1f1f1;
}
</style>
<body>
  <jsp:include page="navbar.jsp"/>
 <div class="flow">
<form action="/cancelOrderItem" method="post">
 <input type="hidden" name="myField" id="myField" value="" />
<table border="2">

		<th>Order Number</th>
		<th>Client Name</th>
		<th>Product Name</th>
		<th>Quantity</th> 
		<th>Placed Date</th>
		<th>Status</th>
		

		<c:forEach var="emp" items="${list}">
			<tr>
				<td>${emp.getEnq().getOrder_id()}</td>
				<td>${emp.getEnq().getClient_name()}</td>
				<td>${emp.getProduct_name()}</td>
				<td>${emp.getProduct_quantity()}</td> 

				<td>${emp.getEnq().getDate_placed()}</td>
				<td>${emp.getProduct_status()}</td>
				
				<td><a href="/cancelOrderItem"> <button type="submit" class="clickbtn" value="${emp.getOrderitems_id()}" onclick="senddata(this)" name="cancel"> Cancel </button></a> </td>
			</tr>
		</c:forEach>
	</table>
	</form>
	</div>
	 <script>
          function senddata(e){
              
             document.getElementById('myField').value= e.value; 
              
              
          }
          
          
          
          
          </script>
</body>
</html>