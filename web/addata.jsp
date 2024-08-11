<%-- 
    Document   : addata
    Created on : 16 Feb, 2020, 12:22:07 AM
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
            
             String dname=request.getParameter("adt1");
            Connection conn=null;
            Statement st=null;
       
            try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `department` (`ccode`,`dname`) VALUES ('"+session.getAttribute("ccode")+"','"+dname+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("adddepartment.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
</html>
