<%-- 
    Document   : login
    Created on : Mar 2, 2017, 9:38:47 PM
    Author     : imalik
--%>

<%@page language="java" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta name="viewport" content="width=device-width, initial-scale=1" />
	<title> Welcome | CS3520 BookStore </title>
	<link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" id="bootstrap-css" />
    <link rel="stylesheet" type="text/css" href="./css/login.css" />
    <script src="./js/jquery-1.10.2.min.js" type="text/javascript"></script>
    <script src="./js/bootstrap.min.js" type="text/javascript"></script>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
</head>

<body style="background: #eee url('img/homeBG.jpg') repeat scroll 0% 0%; background-size: cover;">

    <div class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button class="navbar-toggle" type="button" data-toggle="collapse" data-target="#navbar-main">
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">CS 3520 BookStore </a>
        </div>
        <center>
            <div class="navbar-collapse collapse" id="navbar-main">
                <ul class="nav navbar-nav">
                    <li class="active"><a href="#">Link</a>
                    </li>
                    <li><a href="#">Browse Books </a>
                    </li>
                    <li><a href="#">Link</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Options <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#">Action</a>
                            </li>
                            <li><a href="#">Another action</a>
                            </li>
                            <li><a href="#">Something else here</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Separated link</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">One more separated link</a>
                            </li>
                        </ul>
                    </li>
                </ul>
                <form class="navbar-form navbar-right" role="search">
                    <div class="form-group">

                            <span class="glyphicon glyphicon-user"></span>
                        <input type="text" class="form-control" name="username" placeholder="Username">
                    </div>
                    <div class="form-group">
                         <span class="glyphicon glyphicon-lock"></span>
                        <input type="password" class="form-control" name="password" placeholder="Password">
                    </div>
                    <button type="submit" class="btn btn-success">Sign In</button>
                </form>
            </div>
        </center>
    </div>
</div>

    <div class="container">
	   <div class="login-container">
            <div id="output"></div>
            <div class="avatar"></div>
            <div class="form-box">
                <form id="form_login" action="login.jsp" method="POST">
                    <input name="loginname" type="text" placeholder="Login Name">
                    <input name="password" type="password" placeholder="Password">
                    <button id="btn_login" class="btn btn-info btn-block login" type="submit" onclick="return checkLogin()">Login</button>
                    <button id="btn_register" class="btn btn-info btn-block login" type="submit">Register</button>
                </form>

                <form id="form_register" action="register.jsp" method="POST">
                    <input name="loginname_r" type="text" placeholder="Login Name">
                    <input name="password_r" type="text" placeholder="Password">
                    <input name="fullname_r" type="text" placeholder="Full Name">
                    <input name="phone_r" type="text" placeholder="Phone Num">
                    <button id="btn_confirm" class="btn btn-info btn-block login" type="submit" onclick="return checkRegister()">Confirm</button>
                    <button id="btn_cancel" class="btn btn-info btn-block login" type="submit">Cancel</button>
                </form>
                <br/>
                <label>Admin username : root</label>
                <label>Admin password : root</label>
                <br/>
                <label>Client username : cs3520</label>
                <label>Client password : cs3520</label>
            </div>
        </div>       
    </div>
    <script src="./js/login.js" type="text/javascript"></script>
</body>
</html>