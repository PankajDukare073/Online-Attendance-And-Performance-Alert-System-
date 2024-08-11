<%-- 
    Document   : tlogindata
    Created on : 20 Feb, 2020, 9:39:25 AM
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
                      String qry ="select ccode,tusername,password,dname,tname from teacher";
                      rs=st.executeQuery(qry);
                    while(rs.next())
                      {
                        if(request.getParameter("tlt1").equals(rs.getString(1))&&request.getParameter("tlt2").equals(rs.getString(2))&&request.getParameter("tlt3").equals(rs.getString(3)))
                         {
                              response.sendRedirect("tframe.html");
                              session.setAttribute("tuser",request.getParameter("tlt2"));
                               session.setAttribute("dname",rs.getString(4));
                               session.setAttribute("uname",rs.getString(2));
                               session.setAttribute("tname",rs.getString(5));
                               session.setAttribute("ccode",rs.getString(1));
                              break;
                         }
                       else{
                            continue;
                              
                         }
                      }
               response.sendRedirect("tlogin.jsp");   
              }catch(Exception ex)
                {
                     out.print(ex.getMessage());
                }
          %>
    </body>
</html>
