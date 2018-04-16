<%-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ include file="/WEB-INF/views/navbar.jsp" %>
    <%@ include file="/WEB-INF/views/shopbarnav.jsp" %>
     
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form modelAttribute="customer" action="">
customer details
<form:label path="id"></form:label>
<form:hidden path="id" />
<br>
<b>login credentials</b>

<form:label path="User.email">Enter Email id</form:label>
<form:input path="user.email" />
<br>

<form:label path="user.password">enter password</form:label>
<form:input path="user.password" />
<br>

<b>Billing Address</b>
<form:label path="billingaddress.apartmentNo"></form:label>
<form:input path="billingaddress.apartmentNo" />
<br>

<form:label path="billingaddress."></form:label>
<form:input path="billingaddress." />
<br>
</form:form>

</body>
</html> --%>