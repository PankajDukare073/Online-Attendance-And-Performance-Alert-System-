<%-- 
    Document   : acdata.jsp
    Created on : 16 Feb, 2020, 3:05:19 PM
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
        <%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
             String dname=request.getParameter("act1");
             String cname=request.getParameter("act2");
             String crn=request.getParameter("act3");
             Connection conn=null;
             Statement st=null;
       
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                    String qry1="INSERT INTO `class` ( `ccode`,`dname`,`cname`,`crnumber` ) VALUES ('"+session.getAttribute("ccode")+"','"+dname+"','"+cname+"', '"+crn+"');";
                    st.executeUpdate(qry1);
                    
                    response.sendRedirect("adddepartment.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>

</html>
