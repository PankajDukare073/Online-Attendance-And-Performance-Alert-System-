<%-- 
    Document   : addstudentdat
    Created on : 20 Feb, 2020, 11:20:50 PM
    Author     : Pankaj
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>store teacher data</title>
    </head>
    <body>
       <%  
            String dname=request.getParameter("tt1");
            String uphoto=request.getParameter("tt2");
            String tusername=request.getParameter("tt3");
            String password=request.getParameter("tt4");
            String fname=request.getParameter("tt5");
            String dob=request.getParameter("tt6");
            String email=request.getParameter("tt7");
            String mobile=request.getParameter("tt8");
            String gender=request.getParameter("tt9");
            String address=request.getParameter("tt11");
            String paddress=request.getParameter("tt12");
            String pincode=request.getParameter("tt13");
            String state=request.getParameter("tt14");
            String contry=request.getParameter("tt15");
            String xb=request.getParameter("tt16");
            String xp=request.getParameter("tt17");
            String xy=request.getParameter("tt18");
            String xib=request.getParameter("tt19");
            String xip=request.getParameter("tt20");
            String xiy=request.getParameter("tt21");
            String gb=request.getParameter("tt22");
            String gp=request.getParameter("tt23");
            String gy=request.getParameter("tt24");
            String mb=request.getParameter("tt25");
            String mp=request.getParameter("tt26");
            String my=request.getParameter("tt27");
            String tname=request.getParameter("tt28");
           
                  Connection conn=null;
                  Statement st=null;
                  ResultSet rs=null;
                    
           File afile =new File("C:\\Users\\Pankaj\\Downloads\\"+uphoto);	
    	   if(afile.renameTo(new File("C:\\Users\\Pankaj\\Documents\\NetBeansProjects\\pankaj\\web\\timg\\" + afile.getName())))
           {
    		System.out.println("File is moved successful!");
    	   }else{
    		System.out.println("File is failed to move!");
    	   }
    	  String fphoto="timg/"+afile.getName();
           try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                 String qry1="INSERT INTO `teacher` (`ccode`,`dname`,`tusername`,`password`,`tname`,`fname`,`dob`,`emailid`,`mobile`,`gender`,`address`,`city`,`pincode`,`state`,`contry`,`xb`,`xp`,`xy`,`xib`,`xip`,`xiy`,`gb`,`gp`,`gy`,`mb`,`mp`,`my`,`photo`) VALUES ('"+session.getAttribute("ccode")+"','"+dname+"','"+tusername+"','"+password+"','"+tname+"','"+fname+"','"+dob+"','"+email+"','"+mobile+"','"+gender+"','"+address+"','"+paddress+"','"+pincode+"','"+state+"','"+contry+"','"+xb+"','"+xp+"','"+xy+"','"+xib+"','"+xip+"','"+xiy+"','"+gb+"','"+gp+"','"+gy+"','"+mb+"','"+mp+"','"+my+"','"+fphoto+"');";
                 st.executeUpdate(qry1);
                 response.sendRedirect("adddepartment.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
          %>
    </body>
</html>
