<%-- 
    Document   : alogin
    Created on : 26 Jan, 2020, 7:22:09 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>admin login page</title>
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
        input[type=submit]{
      background-color: #8ebf42;
      color: white;
      padding: 14px 0;
      margin: 10px 0;
      border: none;
      width: 20%;
      }
     form {
      border:5px solid #f1f1f1;
      
      }
      input[type=text], input[type=password] {
      width:80%;
      padding:16px 8px;
      margin:8px 0;
      display:inline-block;
      border:1px solid #ccc;
      box-sizing:border-box;
      }
      
      button {
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
         <center>
             <h1>Online Attendance And Performance Alert System</h1><br><br>
             <h2 style=" border:5px solid #f1f1f1; width: 20%"><img src="image/student.png" alt="Girl in a jacket" style="width:200px;height:150px;"><br>Student Login</h2> <br><br>     
        <div class="login">
           <form name="frm" action="slogindata.jsp" method="post">
                <label for="ccode"><strong>Collage Code:</strong></label>
                <input type="text" placeholder="Enter Collage Code" name="slt1" required>
                <label for="uname"><strong>Username:&nbsp;&nbsp;&nbsp;&nbsp;</strong></label>
                <input type="text" placeholder="Enter Username" name="slt2" required>
                <label for="psw"><strong>Password:&nbsp;&nbsp;&nbsp;&nbsp;</strong></label>
                <input type="password" placeholder="Enter Password" name="slt3" required>
                <input type="submit" value="Login">
               
   </form>
 </div>
</div>
</div>
        </div>
</center>
    </body>
</html>
