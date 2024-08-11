<%-- 
    Document   : selectdate
    Created on : 4 Apr, 2020, 11:56:25 PM
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
                    session.setAttribute("sadate",request.getParameter("mast1"));
                     session.setAttribute("satype",request.getParameter("mast2"));
                      session.setAttribute("sasubject",request.getParameter("mast3"));
                       session.setAttribute("saclass",request.getParameter("mast4"));
                     response.sendRedirect("markattendance.jsp");
          %>
    </body>
</html>
