<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/WEB-INF/views/navbar.jsp" %>
	 <%@ include file="/WEB-INF/views/shopbarnav.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>All Products</title>
<style>
 /*--adding css files--*/
  <%@ include file="/WEB-INF/assets/css/navbarstyle.css" %>
  <%@ include file="/WEB-INF/assets/css/shopnav.css" %>
  
</style>
</head>
<body>
<body>

<div class="container">
<div class="row">

<div class="col-sm-12">
<table class="table table-hover table-striped table-bordered" style="margin-top:30px">
<thead>
 <tr>
	<th>product Name</th>
	<th>Product Description </th>
	<th>Price</th>
	<th>Action</th>
	
 </tr>
</thead>
<tbody>
<c:forEach items="${productsvar }" var="p">
 <tr>
  <td>${p.productName }</td>
  <td>${p.productDescription }</td>
  <td>${p.price }</td>
  <td><a href='<c:url value="/all/getproduct/${p.productId }"></c:url>'> <span
								class="glyphicon glyphicon-info-sign"></span></a>
								
	  <a href='<c:url value=""></c:url>'><span
								class="glyphicon glyphicon-trash"></span></a>
								
	  <a href='<c:url value=""></c:url>'><span class="glyphicon glyphicon-pencil"></span></a>
 </tr>
</c:forEach>
 
</tbody>


</table>
</div>

</div>
</div>
</body>
</html>