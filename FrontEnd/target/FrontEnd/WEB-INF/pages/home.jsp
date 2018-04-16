<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
  <title>Fabglow-Shop online for all kinds of lighting solutions</title>
  <meta charset="utf-8">
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="shortcut icon" type="image/x-icon" href="<c:url value="/assets/images/icon.png" />" />
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

 <script>
 $(document).ready(function(){
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideDown("fast");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop( true, true ).slideUp("fast");
            $(this).toggleClass('open');       
        }
    );
});
 </script>
 
 <!-- adding js files -->
  
  <style>
  
   /*--adding css files--*/
  <%@ include file="/WEB-INF/assets/css/shopnav.css" %>
  <%@ include file="/WEB-INF/assets/css/navbarstyle.css" %>
  <%@ include file="/WEB-INF/assets/css/footer.css" %>
  
    /* Remove the navbar's default margin-bottom and rounded borders */ 
    
	#shopbarContainer{
	height:5vh;
	}
	#myaccount{
	color:black;}
	#shopbar li a{
	color:black;
	font-family:helvetica;}
	
    
	.carousel{
	/**/
	overflow:hidden;}
	
	#myCarousel{
	height:70vh;}
	
	

  .carousel-inner img {
      width: 100%; /* Set width to 100% */
      margin: auto;
      height:200px;
	  
  }
  
  
  /* Hide the carousel text when the screen is less than 600 pixels wide */
  @media (max-width: 600px) {
    .carousel-caption {
      display: none; 
    }
	
	}
  
  }
  
  </style>
</head>
<body>
<%@ include file="/WEB-INF/views/navbar.jsp" %>


<%@ include file="/WEB-INF/views/shopbarnav.jsp" %>



<div id="myCarousel" class="carousel slide" data-ride="carousel container-fluid">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
	  <li data-target="#myCarousel" data-slide-to="2"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">
      <div class="item active">
        <img class="no-resize" src="<c:url value="/assets/images/icon.png" />" alt="Image">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>      
      </div>

      <div class="item">
        <img class="no-resize" src="" alt="Image">
        
             
      </div>
	  <div class="item">
        <img class="no-resize" src="drew-coffman-94401-unsplash.jpg" alt="Image" >
              
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
</div>
  
<div class="container text-center">    
  <h3>Today's Deals </h3><h4><a href="#">See all deals</a></h4><br>
  <div class="row">
    <div class="col-sm-4">
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Current Project</p>
    </div>
    <div class="col-sm-4"> 
      <img src="https://placehold.it/150x80?text=IMAGE" class="img-responsive" style="width:100%" alt="Image">
      <p>Project 2</p>    
    </div>
    <div class="col-sm-4">
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
      <div class="well">
       <p>Some text..</p>
      </div>
    </div>
  </div>
</div><br>
<%@ include file="/WEB-INF/views/footer.jsp" %>


</body>
</html>
