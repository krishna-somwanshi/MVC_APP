<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ include file="cache_control.jsp" %>
<jsp:useBean id="user" class="com.dto.User" scope="session" ></jsp:useBean>

<%
	String name = user.getUserName();
	if(user !=null && user.getUserId()>0){
%>    
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Page</title>
</head>
<body>
	
		<table align="center" style="background-color:aqua;font-size: 50px" >
			<thead>
				<tr>
					<th colspan="2" >Home Page</th>
				</tr>
			</thead>
				<tr>
					<td>Welcome <%=name%></td>
				</tr>
		</table>
			<table align="right" style="background-color:red;font-size: 10px" >
			<thead>		
					<tr>
					<td><a href="logout.jsp" >Logout</a></td>				
				</tr>
			</thead>
			</table>
</body>
</html>
<% }else{
	response.sendRedirect("login.jsp");	
	}
	%>