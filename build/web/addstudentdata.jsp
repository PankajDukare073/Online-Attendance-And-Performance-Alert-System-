<%-- 
    Document   : addstudentdat
    Created on : 20 Feb, 2020, 11:20:50 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,
        java.util.*,
        java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%  
            String dname=request.getParameter("ast1");
            String cname=request.getParameter("ast2");
            String uphoto=request.getParameter("ast26");
            String ernumber=request.getParameter("ast3");
            String susername=request.getParameter("ast4");
            String password=request.getParameter("ast5");
            String fname=request.getParameter("ast6");
            String dob=request.getParameter("ast7");
            String email=request.getParameter("ast8");
            String mobile=request.getParameter("ast9");
            String pmobile=request.getParameter("ast10");
            String gender=request.getParameter("ast11");
            String address=request.getParameter("ast12");
            String paddress=request.getParameter("ast13");
            String pincode=request.getParameter("ast14");
            String state=request.getParameter("ast15");
            String contry=request.getParameter("ast16");
            String xb=request.getParameter("ast17");
            String xp=request.getParameter("ast18");
            String xy=request.getParameter("ast19");
            String xib=request.getParameter("ast20");
            String xip=request.getParameter("ast21");
            String xiy=request.getParameter("ast22");
            String gb=request.getParameter("ast23");
            String gp=request.getParameter("ast24");
            String gy=request.getParameter("ast25");
                  Connection conn=null;
                  Statement st=null;
                    ResultSet rs=null;	
    		
    	   File afile =new File("C:\\Users\\Pankaj\\Downloads\\"+uphoto);
    		
    	   if(afile.renameTo(new File("C:\\Users\\Pankaj\\Documents\\NetBeansProjects\\pankaj\\web\\simg\\" + afile.getName())))
           {
    		System.out.println("File is moved successful!");
    	   }else{
    		System.out.println("File is failed to move!");
    	   }
    	  String fphoto="simg/"+afile.getName();
           
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `student`(`enrnumber`,`susername`,`password`,`fullname`,`dob`,`emailid`,`mobile`,`pmobile`,`gender`,`address`,`city`,`pincode`,`state`,`contry`,`xb`,`xp`,`xy`,`xib`,`xip`,`xiy`,`gb`,`gp`,`gy`,`photo`,`ccode`,`dname`,`cname`) VALUES ('"+ernumber+"','"+susername+"','"+password+"','"+fname+"','"+dob+"','"+email+"','"+mobile+"','"+pmobile+"','"+gender+"','"+address+"','"+paddress+"','"+pincode+"','"+state+"','"+contry+"','"+xb+"','"+xp+"','"+xy+"','"+xib+"','"+xip+"','"+xiy+"','"+gb+"','"+gp+"','"+gy+"','"+fphoto+"','"+session.getAttribute("ccode")+"','"+dname+"','"+cname+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("adddepartment.jsp");
                 
          %>
    </body>
</html>
