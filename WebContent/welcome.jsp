<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="ensisa.java.User"%>
<% User user = (User) session.getAttribute("logUser");
    if(user==null){
        response.sendRedirect("index.jsp");
    }
%>
<!DOCTYPE html>
<html>
    <head>
        <title>Welcome Page</title>
    </head>
    <body>
        <h1> Welcome, <%= user.getName() %></h1>
        <h3>Your Account ID: <%= user.getId() %> </h3>
        <h3>Your Email: <%= user.getEmail() %> </h3>
        <h3>Your Password: <%= user.getPassword() %></h3>
        
        <button><a href="LogoutServlet">Log Out</a></button>
    </body>
</html>