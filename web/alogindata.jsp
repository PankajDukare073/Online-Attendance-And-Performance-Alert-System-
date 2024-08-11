<%-- 
    Document   : alogindata
    Created on : 16 Feb, 2020, 12:24:59 PM
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
                      String qry ="select ccode,ausername,password from rcollege";
                      rs=st.executeQuery(qry);
                    while(rs.next())
                      {
                        if(request.getParameter("alt1").equals(rs.getString(1))&&request.getParameter("alt2").equals(rs.getString(2))&&request.getParameter("alt3").equals(rs.getString(3)))
                         {
                              response.sendRedirect("aframe.html");
                              session.setAttribute("ccode",request.getParameter("alt1"));
                              break;
                         }
                       else{
                            continue;
                              
                         }
                      }
               response.sendRedirect("alogin.html");   
              }catch(Exception ex)
                {
                   
                     out.print(ex.getMessage());
                }
          %>
    </body>
</html>

