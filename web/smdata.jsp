<%-- 
    Document   : smdata
    Created on : 12 Mar, 2020, 2:44:32 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String pname=request.getParameter("pm");
            String tmessage=request.getParameter("tm");
       %>
       <a href="http://bulksmspune.mobi/sendurlcomma.aspx?user=20061442&pwd=Demo@123&senderid=BLKSMS&mobileno=<%= pname %>&msgtext=<%= tmessage %>&smstype=0/4/3">Send Message</a>
          <%      
        %> 
    </body>
</html>
