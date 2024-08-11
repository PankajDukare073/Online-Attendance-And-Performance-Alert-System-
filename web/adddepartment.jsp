<%-- 
    Document   : adddepartment
    Created on : 27 Jan, 2020, 9:19:23 PM
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
            background-image:url(image/login.jpg);
            background-size: cover;
            color: white;
            font: 20px;  
            }
            h2{
                align-content:center;
            }
          *
            {
             box-sizing: border-box;
            }
          .column 
            {
            border: 2px solid blue;
            float: left;
            width: 33.33%;
            padding: 10px;
            height: 500px;
            }
          #myDIV
            {
              height: 427px;
              width: 100%;
              overflow:auto;
            }
          #content
            {
              height: 800px;
              width: 2000px;
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
           th{
               background-color:lightcyan;
               color: black;
               font-size:27px;
               border:2px solid blue;
           }
           td{
               text-align:center;
               color: black;
               font-size: 20px;
               border: 2px solid blueviolet;
               background-color:lightcyan;
           }
           select,option{
              
               font-size: 25px;
           }
           table{
               border:2px solid brown;
           }
           th{
               font-size:27px;
           }
           label{
               align-content:right;
               padding-right:20px;
               font-size:25px;
           }
           
          input[type=text],input[type=file]
          {
            width:40%;
            padding:10px 8px;
            margin:10px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;
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
                      String qry ="select dname from department where ccode='"+session.getAttribute("ccode")+"'";
                      String qry1 ="select dname,cname,crnumber from class where ccode='"+session.getAttribute("ccode")+"'";
                      String qry2 ="select tname from teacher";
                      String qry3="select class,scode,subject,steacher from subject where ccode='"+session.getAttribute("ccode")+"'";
                      rs=st.executeQuery(qry); 
         %>
    <center>
          <div class="row">
              <div class="column">
                 <h2>-:Add Department:-</h2>
                     <form name="frm1" action="addata.jsp" method="get">
                         <br<br><br><label><strong>Department Name:</strong></label> 
                            <input type=text name="adt1" id="textname" size="30" required/><br><br>
                            <input type="submit" value="add" style="font-size:25px;">  
                     </form>
             </div>
    </center>
          <div class="column">
              <center><h2>-:Add Class:-</h2></center>
                    <div style="margin-left: 100px;">
                        <form name="frm1" action="acdata.jsp" method="get">
                            <br<br><br><label><strong>Select Department:</strong></label>
                                <select name="act1">
                                     <%
                                         while(rs.next())
                                              {
                                                  String n=rs.getString(1);
                                     %>
                                             <option> <%=n %></option>
                                     <%
                                              }
     %>
                                </select>
                                <br><br><br><label><strong>Class Name:</strong></label>
                               <input type=text name="act2" id="textname" size="30" required/><br>
                           <br><label><strong>Class room Number:</strong></label>
                           <input type=text name="act3" id="textname" size="30" required><br><br>
                               <center><input type="submit" value="Add" style="align:center;font-size:25px;"/></center>
                    </form>
                 </div>
          </div>
          <div class="column">
                <form name="frm1" action="csadd.jsp" method="get">
           <center><h2>-:Add Subject:-</h2></center>
                 <label><strong>Select Department:</strong></label>
                                 <% 
                                      rs=st.executeQuery(qry);     
                                 %>
                             <select name="scst1">
                                 <%
                                      while(rs.next())
                                          {
                                            String n=rs.getString(1);
                                 %>
                                            <option> <%=n %></option>
                                 <%
                                         }
                                  %>
                             </select>
                               &nbsp;&nbsp;&nbsp;<input type="submit" value="select" formaction="selectclassd.jsp" style="font-size:15px; width:20%;">
                            <br><br><label><strong>Select Class Name:</strong></label>
                                 <%
                                    String qry5 ="select cname from class where dname='"+session.getAttribute("sdname")+"' && ccode='"+session.getAttribute("ccode")+"'";
                                     rs=st.executeQuery(qry5);  
                                 %>
                             <select name="att2">
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
                 <br><label><strong>Subject Code:</strong></label>
                           <input type=text name="cst3" size="15"  >
                            <br<br><br><label><strong>Subject Name:</strong></label>
                           <input type=text  name="cst4" id="textname" size="15" >
                           <br><br><br><label><strong>Subject Teacher:</strong></label>
                           <%
                                    String qry6 ="select tname from teacher where dname='"+session.getAttribute("sdname")+"' && ccode='"+session.getAttribute("ccode")+"'";
                                     rs=st.executeQuery(qry6);  
                                 %>
                             <select name="cst5">
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
                           
                 <center><input type="submit" value="Add" style="align:center;font-size:25px;"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</center><br>
           
     </div>
     </center>
         </form>
                   </div>
</div>
                                         </div>
                                    <div>                       
    <div class="row">
            <div class="column">
                <center><h2>-:View Department:-</h2></center>
                  <div id="myDIV">
                     <div id="content">
                          
                         <table> 
                            
                                <tr> <th>Department Name</th>
                                  <th>Opertion:</th></tr>
                                  <%
                                      
                                     rs=st.executeQuery(qry);
                              
                                        while(rs.next())
                                         {
                                           String n=rs.getString(1);
                                  %>
                                  <tr> 
                                       <form name="scfrm" action="deleted.jsp" method="get">
                                      <td><input type="text" name="dn" value="<%=n %>" style=" text-align:center; font-size: 20px; border:none; background-color:lightcyan;  padding:0 0; color: black; width: 100%" readonly/></td>
                                       <td> <input type="submit" value="Delete" style="font-size:20px; width:80%; background-color:cyan;color: black; "/></td>
                                       </form>
                                  </tr>
                                   <%
                                          }
                                    %>
                            </table>
                    </div>
                </div>
            </div>
             <div class="column">
                 <center><h2>-:View Class:-</h2></center>
                  <div id="myDIV">
                     <div id="content">
                    <table> 
                         <tr>
                            
                            <th><b>Department</b></th>   
                            <th><b>Class name</b></th>
                            <th><b>Class Room Number</b></th>
                             <th>Opertion:</th></tr>
                         </tr>
                                <%
                                     rs=st.executeQuery(qry1);
                              
                                        while(rs.next())
                                         {
                                  %>
                                  <tr>
                                       <form name="scfrm" action="deletec.jsp" method="get">
                                      <td><%=rs.getString(1) %></td>
                                       <td><input type="text" name="cn" value="<%=rs.getString(2) %>" style=" text-align:center; font-size: 20px; border:none; background-color:lightcyan;  padding:0 0; color: black; width: 100%" readonly/></td>
                                   <td><%=rs.getString(3) %></td>
                                   <td> <input type="submit" value="Delete" style="font-size:20px; width:80%; background-color:cyan;color: black; "/></td>
                                       </form>
                                  </tr>
                                 
                                   <%
                                          }
                                    %>
                            </table>
                    </div>
                </div>
            </div>
         <div class="column">
             <center><h2>-:view subject:-</h2></center>
                  <div id="myDIV">
                     <div id="content">
                    <table> 
                        <tr>
                            <th><b>Class name</b></th>
                          <th><b>Subject Code</b></th>
                          <th><b>Subject Name</b></th>
                          <th><b>Subject Teacher</b></th>
                            <th><b>Opertion</b></th>
                             
                     </tr>
                                  <%
                                     rs=st.executeQuery(qry3);
                              
                                        while(rs.next())
                                         {
                                  %>
                                  <tr>
                                      <form name="scfrm" action="deletes.jsp" method="get">
                                       <td><%=rs.getString(1) %></td>
                                   <td><%=rs.getString(2) %></td>
                                   <td><input type="text" name="sn" value="<%=rs.getString(3) %>" style=" text-align:center; font-size: 20px; border:none; background-color: lightcyan;  padding:0 0; color:black; width: 100%" readonly/></td>
                                    <td><%=rs.getString(4) %></td>
                                    <td> <input type="submit" value="Delete" style="font-size:20px; width:80%; background-color:cyan;color: black;"/></td>
                                       </form>
                                  </tr>
                                   <%
                                          }
                                    %>
                            </table>
                    </div>
                </div>
            </div>
            </div>

    </body>
</html>
