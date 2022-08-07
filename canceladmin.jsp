<%-- 
    Document   : canceladmin.jsp
    Created on : 22-Apr-2022, 9:55:18 am
    Author     : sadiq
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
