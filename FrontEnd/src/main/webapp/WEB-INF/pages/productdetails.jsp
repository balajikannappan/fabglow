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
<div class="card">
	<div class="row">
		<aside class="col-sm-5 border-right">
<article class="gallery-wrap"> 
<div class="img-big-wrap">
  <div> <a href="#"><img src="https://s9.postimg.org/tupxkvfj3/image.jpg"></a></div>
</div> <!-- slider-product.// -->
<div class="img-small-wrap">
  <div class="item-gallery"> <img src="<c:url value="/assets/images/${productdet.productId }.png" />"> </div>
  <div class="item-gallery"> <img src="<c:url value="/assets/images/${productdet.productId }.png" />"> </div>
  <div class="item-gallery"> <img src="https://s9.postimg.org/tupxkvfj3/image.jpg"> </div>
  <div class="item-gallery"> <img src="https://s9.postimg.org/tupxkvfj3/image.jpg"> </div>
</div> <!-- slider-nav.// -->
</article> <!-- gallery-wrap .end// -->
		</aside>
		<aside class="col-sm-7">
<article class="card-body p-5">
	<h3 class="title mb-3">${productdet.productName }</h3>

<p class="price-detail-wrap"> 
	<span class="price h3 text-warning"> 
		<span class="currency">INR &#x20b9</span><span class="num">${productdet.price }</span>
	</span> 
	 
</p> <!-- price-detail-wrap .// -->
<dl class="item-property">
  <dt>Description</dt>
  <dd><p>${productdet.productDescription } </p></dd>
</dl>
<dl class="param param-feature">
  <dt>Model#</dt>
  <dd>12345611</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Color</dt>
  <dd>Black and white</dd>
</dl>  <!-- item-property-hor .// -->
<dl class="param param-feature">
  <dt>Delivery</dt>
  <dd>Russia, USA, and Europe</dd>
</dl>  <!-- item-property-hor .// -->

<hr>
	<div class="row">
		<div class="col-sm-5">
			<dl class="param param-inline">
			  <dt>Quantity: </dt>
			  <dd>
			  	<input type="number" name="points" step="1" min="1" max="${productdet.productQuantity }" class="form-control form-control-sm">
			  		
			  </dd>
			</dl>  <!-- item-property .// -->
		</div> <!-- col.// -->
		<div class="col-sm-7">
			<dl class="param param-inline">
				  <dt>Size: </dt>
				  <dd>
				  	<label class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <span class="form-check-label">SM</span>
					</label>
					<label class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <span class="form-check-label">MD</span>
					</label>
					<label class="form-check form-check-inline">
					  <input class="form-check-input" type="radio" name="inlineRadioOptions" id="inlineRadio2" value="option2">
					  <span class="form-check-label">XXL</span>
					</label>
				  </dd>
			</dl>  <!-- item-property .// -->
		</div> <!-- col.// -->
	</div> <!-- row.// -->
	<hr>
	<a href="#" class="btn btn-lg btn-success text-uppercase"> Buy now </a>
	<a href="#" class="btn btn-lg btn-primary text-uppercase"> <i class="fa fa-shopping-cart"></i> Add to cart </a>
</article> <!-- card-body.// -->
		</aside> <!-- col.// -->
	</div> <!-- row.// -->
</div> <!-- card.// -->


</div>
<!--container.//-->

<%-- <div class="container">
<div class="row">
</div>
<div class="col-md-3"></div>
<div class="col-md-6" style="margin-top:20px;">
  <div class="panel panel-default">
    <div class="panel-heading"><h3>${productdet.productName }</h3></div>
    <div class="panel-body">
    <h4>Description: </h4>${productdet.productDescription }<br>
    <h4>Purchase restricted to :</h4>${productdet.productQuantity } items<br>
    <h4>Price of the product: </h4>${productdet.price }
    
    </div>
  </div>
</div>
<div class="col-md-3"></div>

</div> --%>
</body>
</html>