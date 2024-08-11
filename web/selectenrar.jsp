<%-- 
    Document   : selectenrar
    Created on : 26 Feb, 2020, 2:05:13 PM
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
                    session.setAttribute("enr",request.getParameter("mat1"));
                     session.setAttribute("enrn",request.getParameter("mat1"));
                     response.sendRedirect("markresult.jsp");
          %>
    </body>
</html>
