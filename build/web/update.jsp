<%-- 
    Document   : adduser
    Created on : 27 Jan, 2020, 9:22:01 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
  <head>
        <title>Student Registration Form</title>
   <style>
         body
          {
            height: 100%;
            background-image:url(image/login.jpg);
            background-size: cover;
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
    input[type=text]
         {
         
           border:none;
           background-color:lightcyan;
           
         }
         td{
              font-family: Calibri; 
            color:blue; 
            font-size:30px;
             background-color:lightcyan;
            border:3px solid #ccc;
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
                       String qry ="select * from teacher where `tname` = '"+request.getParameter("du")+"'";;
                       rs=st.executeQuery(qry);
                   while(rs.next())
                        {
             %>
             
  <form name="adsfrm" action="adsdata.jsp" method="get">
      <h1>-:View Profile:-</h1>
      <table align="center" cellpadding = "10">
       <tr>
              <td>PHOTO:</td>
             <td><img src="<%= rs.getString(27) %>" alt="Admin" style="width:200px;height:250px;"> <input type="file" name="tt2" value="" required/></td></td>
        </tr>
        <tr>
             <td>USERNAME:</td>
             <td><input type="text" name="tt3"  value="<%= rs.getString(29) %>" required/><%= rs.getString(29) %></td>
        </tr>
        <tr>
             <td>FULL NAME:</td>
             <td><%= rs.getString(5) %></td>
        </tr>
        <tr>
             <td>DATE OF BIRTH:</td> 
             <td><%= rs.getString(6) %></td>
        </tr>
        <tr>
             <td>EMAIL ID:</td>
             <td><%= rs.getString(7) %></td>
        </tr>
        <tr>
             <td>MOBILE NUMBER:</td>
            <td><%= rs.getString(8) %></td>
        </tr>
        <tr>
            <td>GENDER:</td>
            <td><%= rs.getString(9) %></td>
        </tr>
        <tr>
             <td>ADDRESS:</td>
             <td><%= rs.getString(10) %></td>
        </tr>
        <tr>
            <td>PERMANANT ADDRESS:</td>
            <td><%= rs.getString(11) %></td>
       </tr>
       <tr>
            <td>PIN CODE:</td>
            <td><%= rs.getString(12) %></td>
       </tr>
       <tr>
            <td>STATE:</td>
            <td><%= rs.getString(13) %></td>
      </tr>
      <tr>
            <td>COUNTRY:</td>
            <td><%= rs.getString(14) %></td>
      </tr>
      <tr>
      <td>QUALIFICATION: <br /><br /><br /><br /><br /><br /><br /></td>
      <td><table>
                <tr>
                    <td align="center"><b>Sl.No.</b></td>
                    <td align="center"><b>Examination</b></td>
                    <td align="center"><b>Board</b></td>
                    <td align="center"><b>Percentage</b></td>
                    <td align="center"><b>Year of Passing</b></td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Class X:</td>
                    <td><%= rs.getString(15) %></td>
                    <td><%= rs.getString(16) %></td>
                    <td><%= rs.getString(17) %></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Class XII:</td>
                    <td><%= rs.getString(18) %></td>
                    <td><%= rs.getString(19) %></td>
                    <td><%= rs.getString(20) %></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Graduation:</td>
                    <td><%= rs.getString(21) %></td>
                    <td><%= rs.getString(22) %></td>
                    <td><%= rs.getString(23) %></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Masters:</td>
                    <td><%= rs.getString(24) %></td>
                    <td><%= rs.getString(25) %></td>
                    <td><%= rs.getString(26) %></td>
              </tr>
            </table>
        </td>
     </tr>
  </table>
 </form>
  <%
             }
        }catch(Exception ex)
              {
                out.print(ex.getMessage());
              }
  %>
</body>
</html>