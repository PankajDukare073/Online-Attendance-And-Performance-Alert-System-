<%-- 
    Document   : markresultdata
    Created on : 26 Feb, 2020, 2:08:32 PM
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
           String enr=request.getParameter("mrt1");
            String sname=request.getParameter("mrt2");
             int mo=Integer.parseInt(request.getParameter("mrt3"));
            Connection conn=null;
            Statement st=null;
       
           try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 out.print(enr);
                  out.print(sname);
                   out.print(mo);
                    out.print(session.getAttribute("srdate"));
                     out.print(session.getAttribute("srclass"));
                      out.print(session.getAttribute("srsubject"));
                       out.print(session.getAttribute("srtm"));
                String qry1="INSERT INTO `result` (`enr`,`sname`,`date`,`class`,`subject`,`type`,`mo`,`mt`,`code`,`dname`) VALUES ('"+enr+"', '"+sname+"','"+session.getAttribute("srdate")+"','"+session.getAttribute("srclass")+"','"+session.getAttribute("srsubject")+"','"+session.getAttribute("srtype")+"','"+mo+"','"+session.getAttribute("srtm")+"','"+session.getAttribute("ccode")+"','"+session.getAttribute("dname")+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("markresult.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
</html>

