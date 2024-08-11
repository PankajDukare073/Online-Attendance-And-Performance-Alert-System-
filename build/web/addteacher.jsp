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
          input[type=radio]
          {
            border: 30px solid red;
            width: 18px;
            height: 25px;
          }
          select,option{
              
               font-size: 25px;
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
  <form name="adsfrm" action="addteacherdata.jsp" method="get">
      <h1>-:Add Teacher:-</h1>
      <table align="center" cellpadding = "10">
          <tr>
              <% 
                   
                    Connection conn=null;
                    Statement st=null;
                    ResultSet rs=null;
            
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                    st=conn.createStatement();
                       String qry ="select dname from department where ccode='"+session.getAttribute("ccode")+"'";
                       rs=st.executeQuery(qry);
            %>
               <td>SELECT DEPARTMENT:</td><td><select name="tt1">
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
               
             UPLOAD PHOTO:
             <input type="file" name="tt2" value="" required/></td>
         </tr>
            
             <tr>
             <td>student view name:</td>
             <td><input type="text" name="tt28" placeholder="Enter student view name" value="" required/></td>
        </tr>
        <tr>
             <td>USERNAME:</td>
             <td><input type="text" name="tt3" placeholder="Enter Username of student" value="" required/></td>
        </tr>
        <tr>
             <td>PASSWORD:</td>
             <td><input type="password" name="tt4" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" placeholder="Enter Password of Student" value="" required/></td>
        </tr>
        <tr>
             <td>FULL NAME:</td>
             <td><input type="text" name="tt5" placeholder="Enter Full Name Of Student" value="" required/></td>
        </tr>
        <tr>
             <td>DATE OF BIRTH:</td>
             <td><input type="date" name="tt6" value="1988-04-07" required/></td>
        </tr>
        <tr>
             <td>EMAIL ID:</td> 
             <td><input type="email" name="tt7"  placeholder="Enter Email id Of Student" value="p12@gmail.com" required/></td>
        </tr>
        <tr>
             <td>MOBILE NUMBER</td>
             <td><input type="text" name="tt8" pattern="[0-9]{10}" placeholder="Enter Mobile Number Of Teacher"   value="9373809473" required/></td>
        </tr>
        <tr>
            <td>GENDER:</td>
            <td>Male <input type="radio" name="tt9" value="Male" />
                Female <input type="radio" name="tt9" value="Female" /></td>
        </tr>
        <tr>
             <td><br />ADDRESS:<br /><br /></td>
             <td><textarea  rows="4" cols="90" name="tt11" placeholder="Enter Teacher Address" value="pune" required ></textarea></textarea></td>
        </tr>
        <tr>
            <td>PERMANT ADDRESS:</td>
            <td><textarea  rows="4" cols="90" name="tt12" placeholder="Enter Teacher Permant Address" value="pune" required ></textarea></textarea></td>
       </tr>
       <tr>
            <td>PIN CODE:</td>
            <td><input type="text" name="tt13" pattern="[0-9]{6}" title="Must contain six number" placeholder="Enter Pin Code" value="410504" required/></td>
       </tr>
       <tr>
            <td>STATE:</td>
            <td><input type="text" name="tt14" value="Maharastra" required/></td>
      </tr>
      <tr>
            <td>COUNTRY:</td>
            <td><input type="text" name="tt15" value="India" /></td>
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
                    <td><input type="text" name="tt16" placeholder="Enter Board name" value="Maharastra" required/></td>
                    <td><input type="text" name="tt17" placeholder="Enter Percentage" value="70" required/></td>
                    <td><input type="text" name="tt18" placeholder="Enter Year of passings" value="1996" required/></td>
                </tr>
                <tr>
                    <td>2</td>
                    <td>Class XII:</td>
                    <td><input type="text" name="tt19" placeholder="Enter Board name" value="Maharastra" required/></td>
                    <td><input type="text" name="tt20" placeholder="Enter Percentage" value="75" required/></td>
                    <td><input type="text" name="tt21" placeholder="Enter Year of passing" value="1998" required/></td>
                </tr>
                <tr>
                    <td>3</td>
                    <td>Graduation:</td>
                    <td><input type="text" name="tt22" placeholder="Enter Board name" value="Maharastra" required/></td>
                    <td><input type="text" name="tt23" placeholder="Enter Percentage" value="73" required/></td>
                    <td><input type="text" name="tt24" placeholder="Enter Year of passing" value="2000" required/></td>
                </tr>
                <tr>
                    <td>4</td>
                    <td>Masters:</td>
                    <td><input type="text" name="tt25" placeholder="Enter Board name" value="Maharastra" required/></td>
                    <td><input type="text" name="tt26" placeholder="Enter Percentage" value="78" required/></td>
                    <td><input type="text" name="tt27" placeholder="Enter Year of passing" value="2002" required/></td>
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