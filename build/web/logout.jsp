<%-- 
    Document   : logout
    Created on : 27 Jan, 2020, 9:27:09 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    <style>
        
    </style>
    </head>
    <body>
    <center>
        <br><br>
        <%
           session.removeAttribute("ccode");
             response.sendRedirect("index.html");
        %>
        
    </body>
</html>
