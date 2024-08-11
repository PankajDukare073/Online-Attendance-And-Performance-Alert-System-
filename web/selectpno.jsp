<%-- 
    Document   : selectpno
    Created on : 12 Mar, 2020, 2:30:05 PM
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
                    session.setAttribute("spno",request.getParameter("sct1"));
                     response.sendRedirect("sendsms.jsp");
          %>
    </body>
</html>
