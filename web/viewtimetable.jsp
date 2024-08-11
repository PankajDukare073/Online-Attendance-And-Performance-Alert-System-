<%-- 
    Document   : viewstudentprofilet
    Created on : 23 Feb, 2020, 11:37:09 AM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
     <head>
        <style>
                    body
            {
            height: 100%;
            background-image:url(image/book.jpg);
            background-size: cover;
            color: white;
            font: 25px;  
            }
            #myDIV
            {
                border:2px solid blue;
              height:650px;
              width: 100%;
              overflow:auto;
            }
          #content
            {
              height: 8000px;
              width: 2000px;
            }
            select,option{
              
               font-size: 25px;
           }
            th{
               background-color:rgb(255, 208, 0);
               font-size:27px;
               border:2px solid blue;
           }
           td{
               text-align:center;
               font-size: 20px;
               border: 2px solid blueviolet;
               background-color: rgb(250, 221, 95);
           }
           table{
               float: left;
               border:2px solid brown;
           }
           th{
               font-size:27px;
           }
           h1
         {
            margin:0;
            background-image:url(image/home1.jpg);
            text-shadow:2px 3px white;
            text-align: center;
            color:red;
            font-style: italic;
            font-size:70px;
            background-size: cover;
         }
           
        </style>
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
                     
                     
         %>
        <center>
            <form name="frm1" action="scname.jsp" method="get">
                  <h1>-:View Timetabel:-</h1><hr>
                  <br><br><br><label style="font-size:25px; "><strong>Select Class Name:</strong></label>
                                 <%
                                       String qry ="select class from subject where steacher='"+session.getAttribute("tname")+"'  && ccode='"+session.getAttribute("ccode")+"'";;
                                     rs=st.executeQuery(qry); 
                                 %>
                             <select name="sct1">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                            </select><br><br>
                            <center><input type="submit" value="View" style="align:center;font-size:20px;"/><br><br>
            </form>
                            <div id="myDIV">
                <div id="content">
                   
                                <%
                                    
                                     String qry1 ="select ttfile from timetabel where cname='"+session.getAttribute("scn")+"' && ccode='"+session.getAttribute("ccode")+"'";
                      rs=st.executeQuery(qry1);
                              
                                        while(rs.next())
                                         {
                                  %>
                                <img src="<%= rs.getString(1)%>" alt="Admin" style="width:1800px;height:900px;">
                       <iframe src="<%= rs.getString(1)%>" frameborder=o style="width:100px;height:100px;"></iframe
                                 
                                   <%
                                          }
                                    %>
                            
                    </div>
                </div>
                           
                             <%
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     %>
    </body>
</html>
