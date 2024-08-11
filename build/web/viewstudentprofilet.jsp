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
                background-color:lightcyan;
            border:3px solid #ccc;
           }
           table{ 
            font-family: Calibri; 
            color:blue; 
            font-size:30px; 
            font-style: normal;
            font-weight: bold;
            background-color:lightskyblue;
            border: 2px solid navy;
          
               float: left;
               border:2px solid brown;
           }
           label{
               font-size:25px;
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
                      String qry ="select class from subject where steacher='"+session.getAttribute("tname")+"'";;
                          rs=st.executeQuery(qry); 
                     
         %>
        <center>
            <form name="frm1" action="vsptdata.jsp" method="get">
                  <h1>-:View Student User:-</h1><hr>
                            <br><br><br><label><strong>Select Class Name:</strong></label>
                                 <%
                                     rs=st.executeQuery(qry); 
                                 %>
                             <select name="cst2" id="mySelect">
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
                            <center><input type="submit" value="View" style="align:center;font-size:25px;"/><br><br>
            </form>
                            <div id="myDIV">
                <div id="content">
                    <table style="align-content: right;"> 
                         <tr>
                            <th><b>Student name</b></th>
                            <th><b>Photo</b></th>  
                            <th><b>Username</b></th>
                             <th><b>password</b></th>
                            <th><b>Email ID</b></th>
                            <th><b>DOB</b></th>  
                            <th><b>Mobile</b></th>
                            <th><b>Parent Mobile</b></th>
                            <th><b>Address</b></th> 
                            
                         </tr>
                                <%
                                    
                                     String qry1="select * from student where cname='"+session.getAttribute("scs")+"'";;
                                     rs=st.executeQuery(qry1); 
                                     
                              
                                        while(rs.next())
                                         {
                                  %>
                                  <tr>
                                   <td><%=rs.getString(3) %></td>
                                   <td><img src="<%=rs.getString(24) %>" alt="Student" style="width:100px;height:100px;"></td>
                                   <td><%=rs.getString(2) %></td>
                                   <td><%=rs.getString(3) %></td>
                                   <td><%=rs.getString(6) %></td>
                                   <td><%=rs.getString(5) %></td>
                                   <td><%=rs.getString(7) %></td>
                                   <td><%=rs.getString(8) %></td>
                                    <td><%=rs.getString(10) %></td>
                                    
                                    
                                  </tr>
                                 
                                   <%
                                          }
                                    %>
                            </table>
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
