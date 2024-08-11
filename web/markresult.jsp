<%-- 
    Document   : markresult
    Created on : 27 Jan, 2020, 9:34:08 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
        body{
            height: 100%;
            background-image:url(image/class.jpg);
            background-size: cover;
            color:hotpink;
            font-size: 25px;
        }
         input[type=text],input[type=date]
          {
            padding:6px 6px;
            margin:2px 0;
            

          }
          input[type=text]
          {
              background-color:lightcyan;
            padding:6px 6px;
            margin:2px 0;
            border: none;
            font-size: 20px;
            

          }
         select,option{
              
               font-size: 25px;
          }
      input[type=radio]
          {
            border: 30px solid red;
            width: 20px;
            height: 20px;
            font: 21;
            
          }
          label{
              font-size: 35px;
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
              th{
               background-color:rgb(255, 208, 0);
               color: black;
               font-size:27px;
               border:2px solid blue;
           }
           td{
               text-align:center;
               font-size: 20px;
               border: 2px solid blueviolet;
               color: black;
               background-color:lightcyan;
           }
           table{
               margin-top: -250px;
               border:2px solid brown;
           }
           th{
               font-size:27px
               
           }
        </style>
    </head>
    <body>
           <% 
               Connection conn=null;
               Statement st=null;
               ResultSet rs=null;
               Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                    st=conn.createStatement();
                   
         %>
       <center>
           <h1>Mark Result:</h1>
           <div style="margin-top: 50px; border: 2px solid orange; width: 80%; background-color: lightblue; font:20px;">
           <form action="selectrdata.jsp">
               <label>Date:</label><input type="date" name="mrst1"  value="1999-03-11">&nbsp;&nbsp;&nbsp; <label>Type:</label><select name="mrst2"><option>Class</option><option>Practice</option></select>&nbsp;&nbsp;&nbsp;
                  <label>class:</label>
                            <%
                      String qry3 ="select class from subject where steacher='"+session.getAttribute("tname")+"'";
                                     rs=st.executeQuery(qry3); 
                                 %>
                          <select name="mrst4">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                            </select>&nbsp;&nbsp;&nbsp;
               <label>Subject:</label><%
                      String qry2 ="select subject from subject where steacher='"+session.getAttribute("tname")+"'";;
                                     rs=st.executeQuery(qry2); 
                                 %>
                          <select name="mrst3">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                            </select>&nbsp;&nbsp;&nbsp;<label>Total mark:</label><input type="text" name="mrst5"  value="">
                         
                            
                            <br><br><input type="submit" value="select" style="font-size:15px; width:5%;"><br><br>
               
           </form>
           </div>
                            
                               
                                   
                                    <table style="align-content: right;"> 
                         <tr>
                              <th><b>Photo</b></th>
                            <th><b>Enrollment Number</b></th>
                            <th><b>Student Name</b></th>  
                            <th><b>Obtain Mark</b></th>
                             <th><b>Opertion</b></th>
                            
                         </tr>
                         <tr>
                           <%
                                    String qry4 ="select * from student where cname='"+session.getAttribute("srclass")+"' && ccode='"+session.getAttribute("ccode")+"'";
                                     rs=st.executeQuery(qry4);
                              
                                        while(rs.next())
                                         {
                                  %>
                                 <tr>
                                      <form name="scfrm" action="markresultdata.jsp" method="get">
                                          <td><img src="<%=rs.getString(24) %>" alt="Student" style="width:100px;height:100px;"></td>
                                   <td><input type="text" name="mrt1" value="<%=rs.getString(1) %>" readonly/></td>
                                    <td><input type="text" name="mrt2" value="<%=rs.getString(4) %>" readonly/></td>
                                   
                                    <td><input type="text" name="mrt3"  value="" style="background-color: white"></td>
                                   <td><input type="submit" value="Update" style="font-size:30px;"/></td>
                                  
                                  </tr>
                                  
                </form> <br><br>   
                                 
                                   <%
                                          }
                                        
                                    %>
                         </tr>
                                
                                  
                </form> 
                                  
                            </table>
                              
                          
                                                                
                         
           
           
           
 
    </body>
</html>