<%-- 
    Document   : cancel.jsp
    Created on : 29-Mar-2022, 11:28:10 am
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Logout Page</title>
        <%@page import="java.util.*"%>
         <%@page import="java.sql.*"%> 
    </head>
    <body>
        <%
            session.removeAttribute("id");
            response.sendRedirect("index.jsp");
        %>
    </body>
</html>
