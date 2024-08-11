<%-- 
    Document   : logoutdata1
    Created on : 22 Feb, 2020, 12:29:21 AM
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
           session.removeAttribute("dname");
              session.removeAttribute("tname");
             response.sendRedirect("index.html");
        %>
    </body>
</html>
