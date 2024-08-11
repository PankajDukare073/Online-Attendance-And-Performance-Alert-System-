<%-- 
    Document   : showredata
    Created on : 15 Mar, 2020, 12:03:08 PM
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
           
            session.setAttribute("etype",request.getParameter("ety"));
                     response.sendRedirect("viewresult.jsp");
          %>
    </body>
</html>
