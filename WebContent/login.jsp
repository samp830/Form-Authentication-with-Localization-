<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="locale" value="${not empty param.locale ? param.locale : not empty locale  ? locale : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${locale}" />
<fmt:setBundle basename="localization.text" />
<!DOCTYPE html>
<html lang="${locale}">
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
        <title>Login page</title>
   	<Style>
    div.lang{
    position: fixed;
    left: 875px;
    top: 180px;
    text-align: center;
    }    
   	div.login {
 	position: fixed;
 	width: 400px;
 	height: 300px;
 	left: 50%;
 	top: 50%;
	margin-left: -200px;
	margin-top: -150px;
	text-align: center;
	}
	p {
	font-size: 125%
	}
	
	input[type=text] {
    border: 2px solid blue;
    border-radius: 4px;
	
	}
	input[type=text]:focus {
    background-color: lightblue;
	}
	input[type=password] {
    border: 2px solid blue;
    border-radius: 4px;
	}
	input[type=password]:focus {
    background-color: lightblue;
	}
	</Style>
    </head>
    <body>
    <input type="hidden" name="pagename" value="login"/>
    <div class= "lang">
    		<p> <fmt:message key= "Here" var="here"/>
    			<fmt:message key="Change_Language">
    			<fmt:param value= "${here}"/>
    			</fmt:message> 
    		</p>
    		<img src= <fmt:message key= "Flag"/> width= 100 height= 50 /><br>
        <form>
            <select id="locale" name="locale" onchange="submit()">
                <option value="en" ${locale == 'en' ? 'selected' : ''}>English</option>
                <option value="es" ${locale == 'es' ? 'selected' : ''}>Spanish</option>
                 <option value="de" ${locale == 'de' ? 'selected' : ''}>German</option>
                 <option> Italian </option>
            </select>
        </form>
        </div>
<div class= "login">
<form name="login" method="post" action="RegServlet">
<input type="hidden" name="pagename" value="login"/>

		<fmt:message key="Username" />
            <input type="text" name="txtUserName"/><br><br>
            <fmt:message key="Password" />
            <input type="password" name="txtPassword"/><br><br>
            <fmt:message key="Submit" var="signin" />
            <input type="submit" value="${signin}">
</form>
</div>
</body>
</html>