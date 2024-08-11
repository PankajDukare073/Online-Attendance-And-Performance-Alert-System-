<%-- 
    Document   : showattdata
    Created on : 15 Mar, 2020, 11:49:59 AM
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
           
            session.setAttribute("atype",request.getParameter("aty"));
                     response.sendRedirect("viewattendance.jsp");
          %>
    </body>
</html>
