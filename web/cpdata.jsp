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
                  if(request.getParameter("cpt1").equals(request.getParameter("cpt2")))
                         {
                      String qry = "UPDATE `rcollege` SET `password` = '" + request.getParameter("cpt2") + "' WHERE `ccode` = '" + session.getAttribute("ccode") + "' && `ausername` = '" + session.getAttribute("aname") + "'";
                      st.executeUpdate(qry); 
                       response.sendRedirect("alogin.html");
                       session.removeAttribute("ccode");
                       session.removeAttribute("aname");
                         }
                  else{
                      out.print("You Enter Wrong password ");
                  }
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     %>
    </body>
</html>
