<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link rel="stylesheet" href="/css/table-styles.css">
<link rel="stylesheet" href="/css/anchor-styles.css">
</head>
<body>
	<h3><font color="orange">  Available Products   </font></h3>
	 <table id="t3"> 
	 	<tr>
	 		<th>Product Id</th>
	 		<th>Name</th>
	 		<th>Description</th>
	 		<th>Price</th>
	 	</tr>
		
		<c:forEach var="product" items="${products}">
   			<tr>
   				<td> <c:out value="${product.pId}"/></td>
   				<td> <c:out value="${product.pName}"/></td>
   				<td> <c:out value="${product.description}"/></td>
   				<td> <c:out value="${product.price}"/></td>
   			</tr>
 		</c:forEach>
			
	</table> 
		
	<br>
	<br> 
	<font color="GREEN" size="6"> 
		click <a href="/home/">here </a> to go to home page
	</font>
	 
</body>
</html>


<!-- 	
	<ol>
		<c:forEach var="product" items="${products}">
		
			<li>${product}</li>
			
		</c:forEach>
	</ol>
	 -->