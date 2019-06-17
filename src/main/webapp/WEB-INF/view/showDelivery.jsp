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

button {
     background-color: black; /* Green */
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer; 
  transition-duration: 0.4s;
  box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
}
</style>
<body>
  <jsp:include page="navbar.jsp"/>
 <div class="flow">
<table border="2">

		<th>Delivery ID</th>
		<th>Order ID</th>
		<th>Delivery Location</th>
		<th>Delivery Date</th> 
		<th>Delivery Type</th>
        <th>Courier ID</th>

        <th>Delivery Status</th>
	
	


		<c:forEach var="emp" items="${list}">
			<tr>
				<td>${emp.getDelivery_id()}</td>
				<td>${emp.getEq().getOrder_id()}</td>
				<td>${emp.getDelivery_location()}</td>
				<td>${emp.getDelivery_date()}</td> 
                <td>${emp.getDelivery_type()}</td>
				<td>${emp.getDel().getCourier_id()}</td>
                
				<td>${emp.getDelivery_status()}</td>
              
				
			
			</tr>
		</c:forEach>
	</table>
	</form>
	</div>
</body>
</html>