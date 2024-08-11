<%-- 
    Document   : vsptdata
    Created on : 25 Feb, 2020, 11:26:13 PM
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
                    session.setAttribute("scs",request.getParameter("cst2"));
                     response.sendRedirect("viewstudentprofilet.jsp");
          %>
    </body>
</html>
