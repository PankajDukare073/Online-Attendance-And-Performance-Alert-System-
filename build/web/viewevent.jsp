<%-- 
    Document   : viewevent
    Created on : 27 Jan, 2020, 9:32:26 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*" %>
 <!DOCTYPE html>
    <html>
      <head>
        <style>
             body
             {
                  height: 100%;
                  background-image:url(image/login.jpg);
                  background-size: cover;
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
          #myDIV 
            {
                 border: 2px solid orange;
                 margin-top: 100px;
                 height: 610px;
                 width:60%;
                 overflow: auto;
                 font-size:25PX;
                 text-align: center;
            }
           #content
            {
                 height: 800px;
                 width: 2000px;
            }
            table{
            font-family: Calibri; 
            color:blue; 
            font-size:30px; 
            font-style: normal;
            font-weight: bold;
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
      </style>
    </head>
    <body>
     <center>
         <h1>-:View Event:-</h1><br>
                   <% 
                       String dname=request.getParameter("aet1");
                     session.setAttribute("edname",request.getParameter("aet1"));
                       
                        Connection conn=null;
                        Statement st=null;
                        ResultSet rs=null;
                    try{
                       
                        Class.forName("com.mysql.jdbc.Driver");
                        conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                        st=conn.createStatement();
                        String qry ="select * from event where dname='"+dname+"' && ccode='"+session.getAttribute("ccode")+"'";
                        rs=st.executeQuery(qry);
                    %>
        <div id="myDIV">
             <div id="content">
                 <table style="padding: 25px;">
                     <tr>
                          <th><b>DATE</b></th>
                          <th><b>TIME</b></th>
                          <th><b>EVENT INFORMATION</b></th>
                          <th><b>Opertion:</b></th>
                         <th><b>Send SMS:</b></th></tr>
                     
                             
                     </tr>
                     <tr>
                           <%
                                rs=st.executeQuery(qry);
                              while(rs.next())
                                {
                           %>
                             <tr>
                                 <form name="scfrm" action="deletee.jsp" method="get">
                                   
                                    <td><input type="text" name="ed" value="<%=rs.getString(3)%>" style=" text-align:center; font-size: 20px; border:none; background-color:lightcyan; padding:0 0; color:black; width: 100%" readonly/></td>
                                    <td><input type="text" name="et" value="<%=rs.getString(4)%>" style=" text-align:center; font-size: 20px; border:none; background-color:lightcyan; padding:0 0; color:black; width: 100%" readonly/></td>
                                     <td><input type="text" name="ei" value="<%=rs.getString(5)%>" style=" text-align:center; font-size: 20px; border:none; background-color:lightcyan; padding:0 0; color:black; width: 100%" readonly/></td>
                                    <td><input type="submit" value="Delete" formaction="deletee.jsp" style="font-size:20px; width:80%;background-color:cyan; color:black;"></td>
                                     <td><input type="submit" value="send " formaction="sendeventsms.jsp" style="font-size:20px; width:80%;background-color:cyan; color:black;"></td>
                                       </form>
                                 </tr>
                          <%
                                }
                         %>
                     </tr>
               </table>
             </div>
        </div>
    </center>
                   <%
                       }catch(Exception ex)
                         {
                            out.print(ex.getMessage());
                        }
             %>
</body>
</html>