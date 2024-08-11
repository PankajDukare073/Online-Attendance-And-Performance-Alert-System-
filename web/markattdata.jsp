<%-- 
    Document   : markattdata
    Created on : 26 Feb, 2020, 12:04:17 AM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String enr=request.getParameter("mat1");
            String sname=request.getParameter("mat2");
            String status=request.getParameter("mat3");
            Connection conn=null;
            Statement st=null;
       
           try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `attendance` (`enr`,`sname`,`date`,`class`,`subject`,`type`,`status`,`ccode`,`dname`) VALUES ( '"+enr+"','"+sname+"','"+session.getAttribute("sadate")+"','"+session.getAttribute("saclass")+"','"+session.getAttribute("sasubject")+"','"+session.getAttribute("satype")+"','"+status+"','"+session.getAttribute("ccode")+"','"+session.getAttribute("dname")+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("markattendance.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
</html>
