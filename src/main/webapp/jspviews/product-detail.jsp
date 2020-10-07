<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>product details</title>
</head>
<body>
<h2 style="color:brown;font-size:20px;font-family:'Courier New';">
Product Details</h2>
<table>
<tr><td>Product Id          : </td><td><input type="textbox" name="Id"  value="${product.pId}" readonly="true"></td></tr> 
<tr><td>Product Name :</td><td> <input type="textbox" name="Name"  value="${product.pName}" readonly="true"></td></tr>
<tr><td>Product Description :</td><td> <input type="textbox" name="description"  value="${product.description}" readonly="true"></td></tr>
<tr><td>Product Price       :</td><td> <input type="textbox" name="price"  value="${product.price}" readonly="true"></td></tr>
</table>
<br>
	<font color="CYAN" size="6"> click <a href="/product/all">here </a>
		to go to products home page
	</font>
	<br>
</body>
</html>