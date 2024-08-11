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
                    session.setAttribute("srdate",request.getParameter("mrst1"));
                     session.setAttribute("srtype",request.getParameter("mrst2"));
                      session.setAttribute("srsubject",request.getParameter("mrst3"));
                       session.setAttribute("srclass",request.getParameter("mrst4"));
                        session.setAttribute("srtm",request.getParameter("mrst5"));
                     response.sendRedirect("markresult.jsp");
          %>
    </body>
</html>
