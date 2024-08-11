<%-- 
    Document   : addtimetabel
    Created on : 27 Jan, 2020, 9:25:40 PM
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
          width: 38%;
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
                      String qry ="select dname from department where ccode='"+session.getAttribute("ccode")+"'";
                     
                      rs=st.executeQuery(qry); 
         %>
  <center><br><br><br><br><br>
    <div>
         <h2>-:Add Timetabel:-</h2><hr style="width:100%;background-color: blue;">
        <form name="frm1" action="atdata.jsp" method="get">
            <table align="center" cellpadding = "5">
                <tr>
                  <td>Department Name:</td>
                  <td><%
                                    String qry1 ="select dname from department where ccode='"+session.getAttribute("ccode")+"'";
                                     rs=st.executeQuery(qry1);  
                                 %>
                                 <select name="att1">
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
                  <td><input type="submit" value="select" formaction="selectclasst.jsp" style="font-size:15px; width:100%;"></td>
                </tr>
                <td>Class Name:</td>
                  <td><%
                                    String qry2="select cname from class where ccode='"+session.getAttribute("ccode")+"' && dname='"+session.getAttribute("sdname")+"'";
                                     rs=st.executeQuery(qry2);  
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
                                 </select></td>
                                  
                </tr>
                <tr>
                    <td><input type="file" name="att3" style="font-size:20px;"><br><br> </td>
                </tr>
               
            </table>
                                 
                <center><input type="submit" value="Add" style="align:center;font-size:25px;"/>&nbsp;&nbsp;&nbsp;<input type="submit" value="view timetabel" formaction="viewtimetabela.jsp" style="font-size:15px;"></center><br>
                
              
     </div>
     </center>
         </form>
<%
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
%><br><br><br><br><br><br>
</body>
</html>