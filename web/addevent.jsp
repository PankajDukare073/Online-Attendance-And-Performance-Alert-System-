<%-- 
    Document   : addevent
    Created on : 27 Jan, 2020, 9:25:58 PM
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
            background-size:cover;
            color:black;
            font-size: 30px;
            font-family:serif;
        }
      div,hr{
          width: 40%;
          border: 2px solid blue;
          background-color:lightblue;
      }
      input[type=submit]{
     background-color:blue;
              color: white;
              padding: 2px 0;
              margin: 10px 0;
              border: none;
               width: 40%;
               font-size: 25px;
      }
       input[type=text],input[type=date]
          {
            width:100%;
            padding:10px 8px;
            margin:8px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;
          }
       select,option
                  {
                     font-size: 25px;
                  }
                  a{
                 font-size: 20px;
     background-color: lemonchiffon;
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
    <br><br>
    <center>
    <div>
        
   <h2>-:Add Event:-</h2>
   <hr style="width:100%;color: blue;">
    <form name="rsfrm" action="aedata.jsp" method="get">
         
        <table align="center" cellpadding = "10">
                <tr>
                  <td>Select Department:</td>
                  <td><select name="aet1">
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
                  </td>
                </tr>
                      <td>Date:</td>
                      <td><input type="date" name="aet2"  value="" ></td>
                </tr>
                <tr>
                       <td>Time:</td>
                       <td><input type="time" name="aet3" pattern="[0-9]{2}:[0-9]{2}" title="Enter Date In HH:MM Format" placeholder="Enter The Time of Event" value="" ></td>
                </tr>
                 <tr>
                        <td>Event Information:</td>
                        <td><textarea  rows="10" cols="30" name="aet4" placeholder="Enter Event Information"></textarea></td>
                 </tr>
                  <tr>
                      <td></td><td><input type="submit" value="Add"/>&nbsp;&nbsp;&nbsp;<input type="submit" value="View Event" formaction="viewevent.jsp" style="font-size:15px; width:50%;"></td>
                  </tr>
           </table>
                      
    </form>
    </div>
    </center>
<%
        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     %>
<br><br><br><br><br>
</body>
</html>