<%-- 
    Document   : index
    Created on : Mar 2, 2017, 8:12:11 PM
    Author     : imalik
--%>

<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
	<title> CS3520 BookStore </title>
	<meta http-equiv="Content-type" content="text/html; charset=utf-8" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<script type="text/javascript" src="js/jquery-1.6.2.min.js"></script>
    </head>
    <body>
	<div id="header" class="shell">
		<div id="logo"><h1><a href="#">Books We Love</a></h1><span><a href="http://github.com/hayderimran7/cs3520">Designed by Imran Malik / Maiar Khattab </a></span></div>
		<div id="navigation">
			<ul>
				<li><a href="#" class="active">Home</a></li>
				<li><a href="books.jsp">Browse Books</a></li>
				<li><a href="newbook.jsp">New Books</a></li>
			</ul>
		</div>
		<!-- End Navigation -->
		<div class="cl">&nbsp;</div>
		<!-- Login-details -->
		<div id="login-details">
			<p>Welcome, </p><p id="user">%=name%</p> <p><a id="logout">Logout &nbsp;</a></p><p> My Orders </p> <a href="cart.jsp" class="cart" ><img src="img/cart-icon.png" alt="orders" /></a>
			<script type="text/javascript">
				$("#logout").click(function(e) {
				    document.cookie = "loginname=";
   					location.href="login.jsp";
				});
			</script>
		</div>
		<!-- End Login-details -->
	</div>
    </body>
</html>
