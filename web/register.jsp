<%-- 
    Document   : register
    Created on : Mar 4, 2017, 8:40:27 AM
    Author     : imalik
--%>

<%@ page language="java" import="cs3520.*" %>
<html>
<head>
	<title> Register | CS3520 BookStore </title>
</head>

<body style="background: #eee url('img/homeBG.jpg') repeat scroll 0% 0%">
	<%
		cs3520.dbconnector con = new dbconnector();
		cs3520.users user = new users();
		String loginname = (String)request.getParameter("loginname");
		Boolean exist = user.user_exist(loginname, con.stmt);
		if (exist) {
	%>
	<script type="text/javascript">alert("This Login Name has been used");</script>
	<% } else { %>
	<%
		String password = (String)request.getParameter("password");
		String fullname = (String)request.getParameter("fullname");
		String cell = (String)request.getParameter("phone");
		String[] newvalues = new String[] {loginname, password, fullname, cell};
		user.new_user(newvalues, con.stmt);
	%>
	<script type="text/javascript">alert("Register Successful !!");</script>	
	<% } %>
	<% con.closeConnection(); %>
	<script type="text/javascript">location.href = "index.jsp";</script>
</body>
</html>
