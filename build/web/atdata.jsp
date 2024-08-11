<%-- 
    Document   : atdata
    Created on : 21 Feb, 2020, 8:00:33 PM
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
    <body>
        <% 
             String dname=request.getParameter("att1");
            String cname=request.getParameter("att2");
            String atfile=request.getParameter("att3");
             Connection conn=null;
             Statement st=null;
               
               File afile =new File("C:\\Users\\Pankaj\\Downloads\\"+atfile);
    		
    	   if(afile.renameTo(new File("C:\\Users\\Pankaj\\Documents\\NetBeansProjects\\pankaj\\web\\dimg\\" + afile.getName())))
           {
    		out.print("File is moved successful!");
    	   }
           else{
    		out.print("File is failed to move!");
    	   }
    	  String fphoto="dimg/"+afile.getName();
         try{
                 Class.forName("com.mysql.jdbc.Driver");
                 conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                 st=conn.createStatement();
                    String qry1="INSERT INTO `timetabel` ( `ccode`,`dname`,`cname`,`ttfile` ) VALUES ('"+session.getAttribute("ccode")+"','"+session.getAttribute("sdname")+"','"+cname+"', '"+fphoto+"');";
                    st.executeUpdate(qry1);
                    
                    response.sendRedirect("addtimetabel.jsp");
                 }catch(Exception ex)
                 {
                    out.print(ex.getMessage());
                 }
        
        %>
    </body>
</html>
