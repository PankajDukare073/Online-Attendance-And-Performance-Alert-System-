<%-- 
    Document   : selectasubject
    Created on : 5 Apr, 2020, 12:33:44 AM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
                    session.setAttribute("sasubject",request.getParameter("sas"));
                     response.sendRedirect("markattendance.jsp");
          %>
    </body>
</html>
