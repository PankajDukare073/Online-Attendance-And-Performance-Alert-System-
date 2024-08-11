<%-- 
    Document   : logoutdata
    Created on : 21 Feb, 2020, 10:52:03 PM
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
            session.removeAttribute("ccode");
           session.removeAttribute("enrn");
             response.sendRedirect("index.html");
        %>
    </body>
</html>
