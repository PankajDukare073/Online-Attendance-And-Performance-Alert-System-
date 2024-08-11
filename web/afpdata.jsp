<%-- 
    Document   : afpdata
    Created on : 27 Feb, 2020, 4:20:50 PM
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
    <style>
        body
        {
           height: 100%;
           background-image:url(image/login.jpg);
           background-size: cover;
        }
        h1{
            margin:0;
            background-image:url(image/home1.jpg);
            text-shadow:2px 3px white;
            text-align: center;
            color:red;
            font-style: italic;
            font-size:70px;
            background-size: cover;
        }
     form {
      border:5px solid #f1f1f1;
      
      }
     input[type=password] {
      width:50%;
      padding:16px 8px;
      margin:8px 0;
      display:inline-block;
      border:1px solid #ccc;
      box-sizing:border-box;
      }
      
      input[type=submit]{
      background-color: #8ebf42;
      color: white;
      padding: 14px 0;
      margin: 10px 0;
      border: none;
      width: 20%;
      }
      h1 {
      text-align:center;
      fone-size:18;
      }
      button:hover{
      opacity:0.8;
      }
     .login
     {
      background:#CECECE ;
      width:30%;
     }
   </style>
    <body>
       <%  
              Connection conn=null;
              Statement st=null;
              ResultSet rs=null;
                try{
                      Class.forName("com.mysql.jdbc.Driver");
                      conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                      st=conn.createStatement();
                      String qry ="select ccode,ausername from rcollege";
                      rs=st.executeQuery(qry);
                    while(rs.next())
                      {
                        if(request.getParameter("alt1").equals(rs.getString(1))&&request.getParameter("alt2").equals(rs.getString(2)))
                         {
                              session.setAttribute("ccode",request.getParameter("alt1"));
                               session.setAttribute("aname",request.getParameter("alt2"));
                            %>
     <center>
             <h1>-:Change Password:-</h1><br><br>   
        <div class="login">
             <form name="frm" action="alogindata.jsp" method="post">
                 <label><strong>Enter New password:</strong></label>
                   <input type="password" placeholder="Enter New password" name="cpt1" required>
                   <br> <label><strong>Confirm Password:&nbsp;&nbsp;&nbsp;</strong></label>
                   <input type="password" placeholder="Enter new password again" name="cpt2" required>
                 
                   &nbsp;&nbsp;&nbsp;<br><input type="submit" value="Change Password" formaction="cpdata.jsp" style="font-size:15px; width:26%;">
                   
             </form>
       </div>
    </center><%
                              break;
                         }
                       else{
                            continue;
                              
                         }
                      }
              
              }catch(Exception ex)
                {
                     out.print(ex.getMessage());
                }
          %>
    </body>
</html>
