<%-- 
    Document   : csadd
    Created on : 17 Feb, 2020, 7:57:38 PM
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
           
             String cname=request.getParameter("att2");
             String scode=request.getParameter("cst3");
             String sname=request.getParameter("cst4");
             String stname=request.getParameter("cst5");
             Connection conn=null;
             Statement st=null;
       
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `subject` (`ccode`,`dname`,`class`,`scode`,`subject`,`steacher`) VALUES ('"+session.getAttribute("ccode")+"','"+session.getAttribute("sdname")+"','"+cname+"','"+scode+"','"+sname+"','"+stname+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("adddepartment.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
