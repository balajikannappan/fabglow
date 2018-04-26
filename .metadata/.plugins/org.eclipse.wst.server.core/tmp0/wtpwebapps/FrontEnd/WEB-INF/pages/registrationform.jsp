<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/navbar.jsp" %>
    <%@ include file="/WEB-INF/views/shopbarnav.jsp" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

<style>
  
   /*--adding css files--*/
  <%@ include file="/WEB-INF/assets/css/navbarstyle.css" %>
  <%@ include file="/WEB-INF/assets/css/shopnav.css" %>
 
  .jumbotron{
  margin-top:20px;
  }
  
  .jumbotron h3{
  font-family:segoe ui;
  }
  
  .well{
  background:white;
  }
  

</style>
</head>
<body>

<div class="container">
  <div class="row">
  <div class="col-md-2"></div>
  <div class="col-md-8">
  
  <div class="jumbotron"><h3 align="center">CUSTOMER DETAILS</h3></div>
  <div class="well">
   <c:url value="/all/registercustomer" var="url"></c:url>
<form:form modelAttribute="customer" action="${url }" role="form"> <!-- give the action as given in the controller -->
	  
<form:label path="id"></form:label>
<form:hidden path="id"/>

<div class="form-group">
<form:label path="firstName">Enter Firstname</form:label>
<form:input path="firstName" class="form-control" id="firstName"/>
</div>

<div class="form-group">
<form:label path="lastName">Enter lastname</form:label>
<form:input path="lastName" class="form-control" id="lastName" />
</div>

<div class="form-group">
<form:label path="phoneNumber">Enter phonenumber</form:label>
<form:input path="phoneNumber" class="form-control" id="phoneNumber" />
</div>
</div>
<div class="jumbotron"><h3 align="center">LOGIN DETAILS</h3></div>
  <div class="well">

 
<div class="form-group">
<form:label path="user.email">Enter Email </form:label>
<form:input path="user.email" class="form-control" id="user.email"/>
</div>

<div class="form-group">
<form:label path="user.password">Enter password</form:label>
<form:input path="user.password" type="password" class="form-control" id="user.password"/>
</div>
</div>
<div class="jumbotron"><h3 align="center">BILLING ADDRESS DETAILS</h3></div>
  <div class="well">

 
<div class="form-group">
<form:label path="billingAddress.apartmentNo">Enter Apartmentnumber</form:label>
<form:input path="billingAddress.apartmentNo" class="form-control" id="billingAddress.apartmentNo"/>
</div>

<div class="form-group">
<form:label path="billingAddress.streetName">Enter Streetname</form:label>
<form:input path="billingAddress.streetName" class="form-control" id="billingAddress.streetName"/>
</div>

<div class="form-group">
<form:label path="billingAddress.city">Enter city</form:label>
<form:input path="billingAddress.city" class="form-control" id="billingAddress.city"/>
</div>

<div class="form-group">
<form:label path="billingAddress.state">Enter State</form:label>
<form:input path="billingAddress.state" class="form-control" id="billingAddress.state"/>
</div>

<div class="form-group">
<form:label path="billingAddress.country">Enter country</form:label>
<form:input path="billingAddress.country" class="form-control" id="billingAddress.country"/>
</div>

<div class="form-group">
<form:label path="billingAddress.zipCode">Enter zipCode</form:label>
<form:input path="billingAddress.zipCode" class="form-control" id="billingAddress.zipCode"/>
</div>


</div>
<div class="jumbotron"><h3 align="center">SHIPPING ADDRESS DETAILS</h3></div>
  <div class="well">
 
<!-- <label>
Check this if billing address and shipping address are same</label>
<input type="checkbox" onclick="fillShippingAddress(this.form)" class="form-control" id="shippingsame" > -->
<div class="form-group">
<form:label path="shippingAddress.apartmentNo">Enter Apartmentnumber</form:label>
<form:input path="shippingAddress.apartmentNo" class="form-control" id="shippingAddress.apartmentNo"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.streetName">Enter Streetname</form:label>
<form:input path="shippingAddress.streetName" class="form-control" id="shippingAddress.streetName"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.city">Enter city</form:label>
<form:input path="shippingAddress.city" class="form-control" id="shippingAddress.city"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.state">Enter State</form:label>
<form:input path="shippingAddress.state" class="form-control" id="shippingAddress.state"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.country">Enter country</form:label>
<form:input path="shippingAddress.country" class="form-control" id="shippingAddress.country"/>
</div>

<div class="form-group">
<form:label path="shippingAddress.zipCode">Enter zipCode</form:label>
<form:input path="shippingAddress.zipCode" class="form-control" id="shippingAddress.zipCode"/>
</div>

	  <center>
      <input type="submit" class="btn btn-lg btn-info" value="SIGN UP"></center>
	</form:form>
  </div>
  </div>
  <div class="col-md-2"></div>
  </div>
</div>

</body>
</html>