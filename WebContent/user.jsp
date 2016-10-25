<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
   <c:set var="locale" value="${not empty param.locale ? param.locale : not empty locale  ? locale : pageContext.request.locale}" scope="session" />
<fmt:setLocale value="${locale}" />
<fmt:setBundle basename="localization.text" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User</title>
</head>
<style>
div.lang{
    position: fixed;
    right: 150px;
    top: 10px;
    text-align: center;
    }   
#primary_nav_wrap
{
	margin-top:50px;
	text-align: center;
}

#primary_nav_wrap ul
{
	list-style:none;
	position:relative;
	float:left;
	margin:0;
	padding:0;
}

#primary_nav_wrap ul a
{
	display:block;
	text-decoration:none;
	font-weight:700;
	font-size:35px;
	line-height:32px;
	padding:0 60px;
	font-family:"HelveticaNeue","Helvetica Neue",Helvetica,Arial,sans-serif;
	font-color: green
}

#primary_nav_wrap ul li
{
	position:relative;
	float:left;
	margin:0;
	padding:0
}

#primary_nav_wrap ul li.current-menu-item
{
	background:lightgreen;
}

#primary_nav_wrap ul li:hover
{
	background:lightblue
}

#primary_nav_wrap ul ul
{
	display:none;
	position:absolute;
	top:100%;
	left:0;
	background:#fff;
	padding:0
}

#primary_nav_wrap ul ul li
{
	float:none;
	width:500px;
}

#primary_nav_wrap ul ul a
{
	line-height:100%;
	padding:10px 15px
}

#primary_nav_wrap ul li:hover > ul
{
	display:block
}
 </style>
 </head>
 <body>
<div class= "lang">
			<p> <fmt:message key= "Here" var="here"/>
    			<fmt:message key="Change_Language">
    			<fmt:param value= "${here}"/>
    			</fmt:message> 
    		</p>
        <form>
            <select id="locale" name="locale" onchange="submit()">
                <option value="en" ${locale == 'en' ? 'selected' : ''}>English</option>
                <option value="es" ${locale == 'es' ? 'selected' : ''}>Spanish</option>
                 <option value="de" ${locale == 'de' ? 'selected' : ''}>German</option>
                 <option> Italian </option>
            </select>
        </form>
   </div>
<nav id="primary_nav_wrap">
<ul>
  <li class="current-menu-item"><a href="#"><fmt:message key="Welcome_User"/></a></li>
  <li><a href="#"><fmt:message key="Cloud_Applications"/></a>
    <ul>
      <li><a href="#"><fmt:message key="External_Data_Connector"/></a></li>
      <li><a href="#"><fmt:message key="System_Discovery"/></a></li>
    </ul>
  </li>
  <li><a href="#"><fmt:message key="Data"/></a>
    <ul>
      <li><a href="#"><fmt:message key="Backup"/></a></li>
      <li><a href="#"><fmt:message key="Restore"/></a></li>
      <li><a href="#"><fmt:message key="Sync"/></a></li>
    </ul>
  </li>
  </ul>
  </nav>
  </body>
  </html>