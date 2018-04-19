<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ include file="/WEB-INF/views/navbar.jsp" %>
     <%@ include file="/WEB-INF/views/shopbarnav.jsp" %>
     
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product Description</title>
<style>
 <%@ include file="/WEB-INF/assets/css/shopnav.css" %>
  <%@ include file="/WEB-INF/assets/css/navbarstyle.css" %>
</style>
</head>
<body>
<div class="container">
<div class="row">
</div>
<div class="col-md-3"></div>
<div class="col-md-6" style="margin-top:20px;">
  <div class="panel panel-default">
    <div class="panel-heading">${productdet.productName }</div>
    <div class="panel-body">
    ${productdet.productDescription }<br>
    ${productdet.productQuantity }<br>
    ${productdet.price }
    </div>
  </div>
</div>
<div class="col-md-3"></div>

</div>
</body>
</html>