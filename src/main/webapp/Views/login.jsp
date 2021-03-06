<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="common.LogRes" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="utils/css/style.css">
    <title>Login</title>
</head>
<body class="body">
	<%@ page import="common.Constants" %>
	<%
		Constants.idMember = -1;
	%>
    <div class="Log_Res_container">
        <form id="logform" action="login" method="post" class="log_res_Form">
            <span>Please Sign In</span>
            <input id="email" type="text" name="email" placeholder="E-mail"/>
            <input id="password" type="password" name="password" placeholder="Password"/>
            <div>
                <label for="rememberMe"><input type="checkbox" name="rememberMe" id="rememberMe"/>Remember Me</label>
            </div>
            <button type="button" name="login" onclick="myLogin()">Login</button>
            <a href="register.tiles">Click here to register</a>
        </form>
        <p id="warning" style="display: none; color: red; text-align: center; margin-top: 20px;"></p>
        <%
        	String result = (String)request.getAttribute(LogRes.requestResult);
            if(result != null){
            	if(result.equals(LogRes.wrongAccount)){
        %>
                	<p id="warning2" style="color: red; text-align: center; margin-top: 20px;">Your email or password is incorrect!</p>
        <%    		
            	}
            }
        %>
    </div>
</body>
<script type="text/javascript" src="utils/assets/logresValid.js"></script>
</html>