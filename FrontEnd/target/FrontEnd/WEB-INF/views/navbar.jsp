<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <!-- hamburger icon -->
		<span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#" style="margin:0px;"><img src="text-light.png"></a>
	  
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        
		<li><a href="index">Home</a></li>
        <li><a href="about">About</a></li>
        <li><a href="#">Projects</a></li>
        <li><a href="contact">Contact</a></li>
		<li><form class="navbar-form navbar-left">
          <div class="input-group">
		  <input type="text" class="form-control" placeholder="Search for products...">
		  <div class="input-group-btn">
			<button class="btn btn-default" type="submit">
			  <i class="glyphicon glyphicon-search"></i>
			</button>
		  </div>
          </div>
        </form></li>
      </ul> <!--navbar's list of elements-->
	  
      <ul class="nav navbar-nav navbar-right">
        <li><a href="login"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
		<li><a href="register"><i class="glyphicon glyphicon-user" aria-hidden="true"></i> signup</a></li>
		<li class="dropdown dropdown-large"><a href="#" class="dropdown-toggle" data-toggle="dropdown" ><i class="fa fa-cog" aria-hidden="true"></i> My Account<span class="caret"></span></a>
		  <ul class="dropdown-menu dropdown-menu-large" id="myaccount" >
		   <li><a  id="myaccount" href="#" >My orders</a></li>
			<li><a id="myaccount" href="#">Wishlist</a></li>
			<li><a id="myaccount" href="#">Saved Items</a></li>
			<li><a id="myaccount" href="#">Subscribe</a></li>
		  </ul>
		</li>
		  
		<li><a href="#"><i class="fa fa-shopping-cart" aria-hidden="true" style="padding-right:6px"></i>Cart</a></li>
     </ul> <!--navbar's list of elements-->
	</div> <!--collapse-->
  </div> <!--container-fluid-->
</nav> <!--navbar-->
