<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="pr"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Products</title>
<link rel="stylesheet" href="/css/table-styles.css">
<link rel="stylesheet" href="/css/anchor-styles.css">
</head>
<body>

	<!-- 
	<pr:if test="${fn:length(products) == 0}">
            <p>No product details available. Please add some products in DB <p/>
     </pr:if>
     -->
	<!--  No direct if else option avilable in JSP . 
     	we can use below to achieve that-->
	<pr:choose>
		<pr:when test="${fn:length(products) == 0}">
			<p style="color:brown;font-size:20px;font-family:'Courier New';"> 
				No product details available. Please add some products in DB/data.sql file
			<p/>
		</pr:when>
		<pr:otherwise>
			<br>
			<h3>
				<font color="orange"> Available Products </font>
			</h3>
			<table id="t3">
				<tr>
					<th>Product Id</th>
					<th>Name</th>
					<th>Description</th>
					<th>Price</th>
				</tr>

				<pr:forEach var="product" items="${products}">
					<tr>
						<td> <a href="/product/${product.pId}"> <pr:out value="${product.pId}" /> </a></td>
						<td><pr:out value="${product.pName}" /></td>
						<td><pr:out value="${product.description}" /></td>
						<td><pr:out value="${product.price}" /></td>
					</tr>
				</pr:forEach>

			</table>
		</pr:otherwise>
	</pr:choose>

	<br>
	<br>
	<font color="GREEN" size="6"> click <a href="/home/">here </a>
		to go to home page
	</font>

</body>
</html>


<!-- 	
	<ol>
		<pr:forEach var="product" items="${products}">
		
			<li>${product}</li>
			
		</pr:forEach>
	</ol>
	 -->