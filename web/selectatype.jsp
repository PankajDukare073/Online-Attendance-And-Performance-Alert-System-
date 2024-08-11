<%-- 
    Document   : selectatype
    Created on : 5 Apr, 2020, 12:07:35 AM
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
                    session.setAttribute("satype",request.getParameter("sat"));
                     response.sendRedirect("markattendance.jsp");
          %>
    </body>
</html>
