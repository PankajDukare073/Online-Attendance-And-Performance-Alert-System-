<%-- 
    Document   : rcollege
    Created on : 16 Feb, 2020, 11:24:40 AM
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
            String cname=request.getParameter("rct1");
            String ccode=request.getParameter("rct2");
            String ausername=request.getParameter("rct3");
            String password=request.getParameter("rct4");
            String address=request.getParameter("rct5");
            String emailid=request.getParameter("rct6");
            String mobile=request.getParameter("rct7");
            String pincode=request.getParameter("rct8");
            String state=request.getParameter("rct9");
            String contry=request.getParameter("rct10");
           
            Connection conn=null;
            Statement st=null;
       
           try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `rcollege` (`cname`,`ccode`,`ausername`,`password`,`address`,`emailid`,`mobile`,`pincode`,`state`,`contry`) VALUES ('"+cname+"', '"+ccode+"','"+ausername+"','"+password+"','"+address+"','"+emailid+"','"+mobile+"','"+pincode+"','"+state+"','"+contry+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("index.html");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
</html>
