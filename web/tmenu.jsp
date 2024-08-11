<%-- 
    Document   : amenu
    Created on : 26 Jan, 2020, 10:39:45 PM
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
        .vertical-menu {
  width: 200px;
}

.vertical-menu a {
font-size:30px;
  color: black;
  display: block;
  padding: 12px;
  border:1px solid blue;
  text-decoration: none;
}

.vertical-menu a:hover {
  background-color: #ccc;
}
    </style>
   <body>
<center>
<div class="vertical-menu">
<a href="viewteacherprofile.jsp" target="main">View Profile</a>
<a href="markattendance.jsp" target="main">Mark Attendance</a>
<a href="markresult.jsp" target="main">Mark Result</a>
<a href="vieweventuser.jsp" target="main">View Event</a>
<a href="viewtimetable.jsp" target="main">View Timetabel</a>
<a href="viewstudentprofilet.jsp" target="main">View Student Profile</a>
<a href="logoutdata1.jsp" target="main2"> Logout</a>
</div>
</center>
</body>
</html>