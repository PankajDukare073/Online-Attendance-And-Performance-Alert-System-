<%-- 
    Document   : selectclassd
    Created on : 25 Feb, 2020, 9:57:41 PM
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
                    session.setAttribute("sdname",request.getParameter("scst1"));
                     response.sendRedirect("adddepartment.jsp");
          %>
    </body>
</html>
