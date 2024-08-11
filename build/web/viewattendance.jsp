<%-- 
    Document   : viewattendance
    Created on : 27 Jan, 2020, 9:38:32 PM
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
            body
            {
            height: 100%;
            background-image:url(image/class.jpg);
            background-size: cover;
            color: black;
            font: 20px;  
            }
            select,option{
              
               font-size: 25px;
           }
            table{
            font-family: Calibri; 
            color:blue; 
            font-size:30px; 
            font-style: normal;
            font-weight: bold;
            background-color:lightskyblue;
            border: 2px solid navy;
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
                background-color:lightcyan;
           }
           table{
             
               border:2px solid brown;
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
              width:100%;
            }
          
         label
           {
               font-size:20px;
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
                       String qry ="select * from attendance where type='"+session.getAttribute("atype")+"'   && enr='"+session.getAttribute("enrn")+"'   && ccode='"+session.getAttribute("ccode")+"'  && dname='"+session.getAttribute("dname")+"'";
                       rs=st.executeQuery(qry);
                  
             %>
      <h1>-:View Attendance:-</h1>
      <hr>
    <center>
        <form name="scfrm" action="showattdata.jsp" method="get">
            <br<br><br><label><strong>Select Type:</strong></label>
                                 <% 
                                      rs=st.executeQuery(qry);     
                                 %>
                    <br><select name="aty">
                                          <option>theory</option>
                        <option>Practicle</option>
                       </select><br><br><br>
                             <input type="submit" value="Show" style="font-size:30px;"><br><br>
                </form> <br> 
<div id="myDIV">
                <div id="content">
      <table align="center" cellpadding = "10">
           <tr>
                            <th><b>DATE</b></th>
                            <th><b>SUBJECT</b></th>  SS
                            <th><b>TYPE</b></th>
                             <th><b>STATUS</b></th>
                            
                         </tr>
                          <%! int count =0; %>
                           <%! int count1 =0; %>
                           <%! int per =0; %>
                         <%
                              while(rs.next())
                        {
                           if(rs.getString(7).equals("Present"))
                            {
                                count=count+1;
                            }
                           count1=count1+1;
                            %>
                                  <tr>
                                   <td><%=rs.getString(4) %></td>
                                   <td><%=rs.getString(5) %></td>
                                   <td><%=rs.getString(6) %></td>
                                    <td><%=rs.getString(7) %></td>
                                   
                                  
                                  </tr>
                                  
                                  <%
                                      }
%>
<%
 per=(count*100)/count1;

%>
</table>
<table>
<tr>
    <td style="font-size:35px;">percentage</td><td style="font-size:35px;"><%=per%>%</td>
    <% count=0;
     count1=0;
      per=0;
    %>
</tr>
            </table>
 </div>
                </div>
    </center>
          
  
  <%
      
                 }catch(Exception ex)
                     {
                                              }
             %>
    </body>
</html>
