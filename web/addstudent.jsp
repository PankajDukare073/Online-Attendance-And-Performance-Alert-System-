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
              background-image:url(image/class.jpg);
              background-size: cover;
            }
       table{
              font-family: Calibri; 
              color:blue; 
              font-size:30px; 
              font-style: normal;
              font-weight: bold;
              background-color:lightpink;
              border: 2px solid navy
            }
       input[type=text],input[type=password],input[type=email],input[type=date]
          {
            width:100%;
            padding:10px 8px;
            margin:8px 0;
            display:inline-block;
            border:1px solid #ccc;
            box-sizing:border-box;
          }
           select,option{
              
               font-size: 25px;
          }
      input[type=radio]
          {
            border: 30px solid red;
            width: 25px;
            height: 18px;
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
  <form name="adsfrm" action="addstudentdata.jsp" method="get">
      <h1>-:Add Student:-</h1>
      <table align="center" cellpadding = "10">
          <tr>
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
            
               <td>SELECT DEPARTMENT:</td><td><select name="ast1">
                       
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
                  &nbsp;&nbsp;&nbsp;<input type="submit" value="select" formaction="selectsdas.jsp" style="font-size:10px; width:7%;">
          
              UPLOAD PHOTO:
              <input type="file" name="ast26" value="">
               
               </tr>
            <%
                   String qry1 ="select cname from class where dname='"+session.getAttribute("sdname")+"' && ccode='"+session.getAttribute("ccode")+"'";
                   rs=st.executeQuery(qry1);
            %>
               <tr><td>SELECT CLASS:</td><td><select name="ast2" >
            <%
                   while(rs.next())
                        {
                            String n=rs.getString(1);
             %>
                 <option> <%= rs.getString(1) %></option>
             <%
                        }
             %>
                  </select>
                </td>
         </tr>
             <%
                 }catch(Exception ex)
                     {
                          out.print(ex.getMessage());
                     }
             %>
        <tr>
             <td>ENROLLMENT NUMBER:</td>
             <td><input type="text" name="ast3" placeholder="Enter student Enrollment number" value="18050801" ></td>
        </tr>
        <tr>
             <td>USERNAME:</td>
             <td><input type="text" name="ast4" placeholder="Enter Username of student" value=""></td>
        </tr>
        <tr>
             <td>PASSWORD:</td>
             <td><input type="password" name="ast5" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter Password of Student" value="" ></td>
        </tr>
        <tr>
             <td>FULL NAME:</td>
             <td><input type="text" name="ast6" placeholder="Enter Full Name Of Student" value="" ></td>
        </tr>
        <tr>
             <td>DATE OF BIRTH:</td>
             <td><input type="date" name="ast7"  value="1999-03-11"></td>
        </tr>
        <tr>
             <td>EMAIL ID:</td> 
             <td><input type="email" name="ast8"  placeholder="Enter Email id Of Student" value="p12@gmail.com"></td>
        </tr>
        <tr>
             <td>MOBILE NUMBER</td>
             <td><input type="text" pattern="[0-9]{10}" name="ast9" placeholder="Enter Mobile Number Of Student" value="9922074173"></td>
        </tr>
        <tr>
             <td>PARENT MOBILE NUMBER:</td>
            <td><input type="text" pattern="[0-9]{10}" name="ast10" placeholder="Enter Parent Mobile Number Of Student" value="9822074173"></td>
        </tr>
        <tr>
            <td>GENDER:</td>
            <td>Male <input type="radio" name="ast11" value="Male" />
                Female <input type="radio" name="ast11" value="Female" /></td>
        </tr>
        <tr>
             <td><br />ADDRESS:<br /><br /></td>
             <td><textarea name="ast12" rows="4" cols="50" placeholder="Enter Address of Student" value="pune"></textarea></td>
        </tr>
        <tr>
            <td>PERMANT ADDRESS:</td>
            <td><textarea name="ast13" rows="4" cols="50" placeholder="Enter Permant Address of student" value="pune"></textarea></td>
       </tr>
       <tr>
            <td>PIN CODE:</td>
            <td><input type="text" name="ast14" pattern="[0-9]{6}" title="Must contain six number" placeholder="Enter Pin Code" value="410504"></td>
       </tr>
       <tr>
            <td>STATE:</td>
            <td><input type="text" name="ast15" value="Maharastra" ></td>
      </tr>
      <tr>
            <td>COUNTRY:</td>
            <td><input type="text" name="ast16" value="India" /></td>
      </tr>
      <tr>
      <td>QUALIFICATION: <br /><br /><br /><br /><br /><br /><br /></td>
      <td><table>
                <tr>
                    <td align="center"><b>Sr.No.</b></td>
                    <td align="center"><b>Examination</b></td>
                    <td align="center"><b>Board</b></td>
                    <td align="center"><b>Percentage</b></td>
                    <td align="center"><b>Year of Passing</b></td>
                </tr>
                <tr>
                    <td>1</td>
                    <td>Class X:</td>
                    <td><input type="text" name="ast17" placeholder="Enter Board name" value="Maharastra" ></td>
                    <td><input type="text" name="ast18" placeholder="Enter Percentage" value="69" ></td>
                    <td><input type="text" name="ast19" placeholder="Enter Year of passings" value="2002" ></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Class XII:</td>
                    <td><input type="text" name="ast20" placeholder="Enter Board name" value="Maharastra" ></td>
                    <td><input type="text" name="ast21" placeholder="Enter Percentage" value="68" ></td>
                    <td><input type="text" name="ast22" placeholder="Enter Year of passing" value="2006" ></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Graduation:</td>
                    <td><input type="text" name="ast23" placeholder="Enter Board name" value="Maharastra" ></td>
                    <td><input type="text" name="ast24" placeholder="Enter Percentage" value="52" ></td>
                    <td><input type="text" name="ast25" placeholder="Enter Year of passing" value="2008"></td>
                </tr>
            </table>
        </td>
     </tr>
     <tr>
        <td></td><td><input type="submit" value="Submit" style="font-size:30px;"><input type="reset" value="Reset" style="font-size:30px; margin-left:275px;"></td>
    </tr>
  </table>
 </form>
</body>
</html>