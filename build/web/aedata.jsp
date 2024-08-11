<%-- 
    Document   : aedata
    Created on : 22 Feb, 2020, 12:05:58 AM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String dname=request.getParameter("aet1");
            String edate=request.getParameter("aet2");
            String etime=request.getParameter("aet3");
            String einfo=request.getParameter("aet4");
           
            Connection conn=null;
            Statement st=null;
       
           try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `event` (`ccode`,`dname`,`date`,`time`,`eventinfo`) VALUES ('"+session.getAttribute("ccode")+"','"+dname+"','"+edate+"','"+etime+"','"+einfo+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("addevent.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
</html>
