<%-- 
    Document   : smdata
    Created on : 12 Mar, 2020, 2:44:32 PM
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
                        Class.forName("com.mysql.jdbc.Driver");
                        conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                        st=conn.createStatement();
                        
                    
            String edate=request.getParameter("ed");
            String etime=request.getParameter("et");
            String einfo=request.getParameter("ei");
            String pname=null;
    
                                    String qry3="select pmobile from student where ccode='"+session.getAttribute("ccode")+"' && dname='"+session.getAttribute("edname")+"'";
                                     rs=st.executeQuery(qry3);  
                               
                                   while(rs.next())
                                        {
                                          pname=rs.getString(1);
                              
                                         }
         %>
                                 </select>
                                 
       <a href="http://bulksmspune.mobi/sendurlcomma.aspx?user=20061442&pwd=Demo@123&senderid=BLKSMS&mobileno=<%= pname %>&msgtext=date:<%= edate %> time-<%=etime %> event:<%=einfo %>&smstype=0/4/3">Send Message</a>
          <%      
        %> 
    </body>
</html>
