<%-- 
    Document   : showsdata
    Created on : 25 Feb, 2020, 8:36:10 PM
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
                    session.setAttribute("scname",request.getParameter("sct2"));
                     response.sendRedirect("viewuser.jsp");
          %>
    </body>
</html>
