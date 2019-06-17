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
    left:100px;
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
  border-bottom: 2px solid black;
  height: 40px;
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
input[type=submit] { 
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
  <div class = "body">
   <div class="layout">
            <div class="main">
 <form:form method="POST"
          action="/returns" modelAttribute="enquiryplace">
             <table>
                <tr>
               <td><form:label path = "identity">Select Order ID</form:label></td>
               <td>
                  <form:select path = "identity">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${orderList}" />
                  </form:select>     	
               </td>
               <br>
            </tr>   	  
                 <tr>
               <td><form:label path = "productname">Product</form:label></td>
               <td>
                  <form:select path = "productname">
                     <form:option value = "NONE" label = "Select"/>
                     <form:options items = "${productList}" />
                  </form:select>     	
               </td>
                <br>
            </tr>   	
                <tr>
                    <td><form:label path="quantity">Returning quantity</form:label></td>
                    <td><form:input path="quantity"/></td>
                </tr>
                 <br>
                 <tr>
                    <td><form:radiobutton path="returntype" value="Repair"/> Repair
                     <form:radiobutton path="returntype" value="Refund"/> Refund 
                       <form:radiobutton path="returntype" value="Exchange"/> Exchange </td>
                </tr>
                 <br>
                <tr>
                    <td><form:label path="description">Reason</form:label></td>
                    <td><form:input path="description"/></td>
                </tr>
                 <br>
                 <tr>
                    <td><form:label path="location">Return Location</form:label></td>
                    <td><form:input path="location"/></td>
                </tr>
                <br>
                <tr>
                    <td><input type="submit" value="Submit"/></td>
                </tr>
            </table>
        </form:form>
        </div>
        </div>
        </div>
</body>
</html>