<%-- 
    Document   : delet
    Created on : 2 Mar, 2020, 7:13:54 PM
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
               Connection conn=null;
               Statement st=null;
               ResultSet rs=null;
          try{
               Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                    st=conn.createStatement();
                  
                      String qry ="DELETE FROM `subject` WHERE `subject` = '"+request.getParameter("sn")+"' && ccode='"+session.getAttribute("ccode")+"'";
                     
                      st.executeUpdate(qry); 
                       response.sendRedirect("adddepartment.jsp");
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     %>
    </body>
</html>
