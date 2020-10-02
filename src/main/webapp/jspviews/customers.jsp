<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Customers</title>
<link rel="stylesheet" href="/css/table-styles.css">
<link rel="stylesheet" href="/css/anchor-styles.css">
</head>
<body>

	<c:choose>
		<c:when test="${fn:length(customers) == 0 }">
			<p style="color: brown; font-size: 20px; font-family: 'Courier New';">
				No customers added. Please add the details in DB/data.sql file
			<p />
		</c:when>
		<c:otherwise>

			<h3>
				<font color="orange"> Customers Details </font>
			</h3>

			<table id="t1">
				<tr>
					<th>Customer Id</th>
					<th>Name</th>
				</tr>

				<c:forEach var="customer" items="${customers}">
					<tr>
						<td><c:out value="${customer.custId}" /></td>
						<td><c:out value="${customer.name}" /></td>
					</tr>
				</c:forEach>

			</table>
		</c:otherwise>
	</c:choose>

	<br>
	<br>
	<font color="GREEN" size="6"> click <a href="/home/">here </a>
		to go to home page
	</font>

</body>
</html>