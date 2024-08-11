<%-- 
    Document   : scname
    Created on : 26 Feb, 2020, 10:00:09 PM
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
                    session.setAttribute("scn",request.getParameter("sct1"));
                     response.sendRedirect("viewtimetable.jsp");
          %>
    </body>
</html>
