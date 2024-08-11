<%-- 
    Document   : slogindata
    Created on : 20 Feb, 2020, 9:25:15 AM
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
              Connection conn=null;
              Statement st=null;
              ResultSet rs=null;
                try{
                      Class.forName("com.mysql.jdbc.Driver");
                      conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                      st=conn.createStatement();
                      String qry ="select ccode,susername,password,enrnumber,dname,cname from student";
                      rs=st.executeQuery(qry);
                    while(rs.next())
                      {
                        if(request.getParameter("slt1").equals(rs.getString(1))&&request.getParameter("slt2").equals(rs.getString(2))&&request.getParameter("slt3").equals(rs.getString(3)))
                         {
                              response.sendRedirect("sframe.html");
                              session.setAttribute("ccode",rs.getString(1));
                              session.setAttribute("enrn",rs.getString(4));
                               session.setAttribute("dname",rs.getString(5));
                               session.setAttribute("cname",rs.getString(6));
                              break;
                         }
                       else{
                            continue;
                              
                         }
                      }
               response.sendRedirect("slogin.jsp");   
              }catch(Exception ex)
                {
                     out.print(ex.getMessage());
                }
          %>
    </body>
</html>
