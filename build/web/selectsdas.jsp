<%-- 
    Document   : selectsdas
    Created on : 26 Feb, 2020, 3:28:23 PM
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
                    session.setAttribute("sdname",request.getParameter("ast1"));
                     response.sendRedirect("addstudent.jsp");
          %>
    </body>
</html>
