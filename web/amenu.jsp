<%-- 
    Document   : amenu
    Created on : 20 Feb, 2020, 7:20:35 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
        body{
              background-image:url(image/menub.jpg);
              background-repeat: no-repeat; 
            }
       .vertical-menu 
            {
              width: 200px;
            }

       .vertical-menu a
            {
                font-size:30px;
                color: black;
                display: block;
                padding: 12px;
                border:1px solid blue;
                text-decoration: none;
            }

       .vertical-menu a:hover
           {
                 background-color: #ccc;
            }
            
    </style>
   <body>
        <center>
            <div>
                
            </div>
                <div class="vertical-menu">
                    <a href="adddepartment.jsp" target="main">Add Department</a>
                    <a href="addteacher.jsp" target="main">Add Teacher</a>
                    <a href="addstudent.jsp" target="main">Add Student</a>
                    <a href="viewuser.jsp" target="main">View User Data</a>
                    <a href="addtimetabel.jsp" target="main">Add Timetabel</a>
                    <a href="addevent.jsp" target="main">Add Event</a>
                    <a href="sendsms.jsp" target="main">Send SMS </a>
                    <a href="logout.jsp" target="main2"> Logout</a>
                </div>
        </center>
    </body>
</html>
