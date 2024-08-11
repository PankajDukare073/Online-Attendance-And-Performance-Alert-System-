<%-- 
    Document   : addsms
    Created on : 27 Jan, 2020, 9:26:37 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
<head>
    <style>
        body{
            height: 100%;
            background-image:url(image/book.jpg);
            background-size: cover;
            color:black;
            font-size: 30px;
        }
     option{
      width:80%;
      padding:16px 8px;
      margin:8px 0;
      display:inline-block;
      border:1px solid #ccc;
      box-sizing:border-box;
      }
      
      div,hr{
          width: 40%;
          border: 2px solid blue;
          background-color: lightblue;
      }
      select,option{
              
               font-size: 25px;
           }
         input[type=submit]
            {
              background-color:blue;
              color: white;
              padding: 2px 0;
              margin: 10px 0;
              border: none;
               width: 40%;
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

         <br><br>
<center>
    <div>
        <form name="frm1" action="smdata.jsp" method="get">
                <h2>-:Send SMS:-</h2>
                <hr style="width:100%;background-color: blue;">
                <table align="center" cellpadding = "10">
                <tr>
                  <td>Department Name:</td>
                  <td><%
                                    String qry1 ="select dname from department where ccode='"+session.getAttribute("ccode")+"'";
                                     rs=st.executeQuery(qry1);  
                                 %>
                                 <select name="scst1">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                            </select><br>

                  </td>
                  <td><input type="submit" value="select" formaction="selectclasssm.jsp" style="font-size:15px; width:100%;"></td>
                </tr>
                <td>Class Name:</td>
                  <td><%
                                    String qry2="select cname from class where ccode='"+session.getAttribute("ccode")+"' && dname='"+session.getAttribute("sdname")+"'";
                                     rs=st.executeQuery(qry2);  
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
                                 </select></td>
                                  <td><input type="submit" value="select" formaction="selectpno.jsp" style="font-size:15px; width:100%;"></td>
                </tr>
                <tr>
                    <td>Parent Mobile<br> Number:</td>
                  <td><%
                                    String qry3="select pmobile from student where ccode='"+session.getAttribute("ccode")+"' && cname='"+session.getAttribute("spno")+"'";
                                     rs=st.executeQuery(qry3);  
                                 %>
                                 <select name="pm">
                                 <%
                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 %>
                               <option style="font-size:20PX;"> <%=n %></option>
                                 <%
                                         }
                                 %>
                                 </select>
                  </td>

         
                </tr>
                <tr>
                  <td>Message Text:</td>
                  <td><textarea name="tm" rows="10" cols="30"></textarea></td>
                </tr>
            <tr>
                   </table>
                <br>
                <input type="submit" value="SEND MESSAGE" style="font-size: 25px" /><br><br>
                </form
    </div>
                                 <br>
</body>
</html>