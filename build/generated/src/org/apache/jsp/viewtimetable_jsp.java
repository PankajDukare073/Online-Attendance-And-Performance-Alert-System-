package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.io.*;

public final class viewtimetable_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("     <head>\n");
      out.write("        <style>\n");
      out.write("                    body\n");
      out.write("            {\n");
      out.write("            height: 100%;\n");
      out.write("            background-image:url(image/login.jpg);\n");
      out.write("            background-size: cover;\n");
      out.write("            color: white;\n");
      out.write("            font: 20px;  \n");
      out.write("            }\n");
      out.write("            #myDIV\n");
      out.write("            {\n");
      out.write("                border:2px solid blue;\n");
      out.write("              height:650px;\n");
      out.write("              width: 100%;\n");
      out.write("              overflow:auto;\n");
      out.write("            }\n");
      out.write("          #content\n");
      out.write("            {\n");
      out.write("              height: 8000px;\n");
      out.write("              width: 2000px;\n");
      out.write("            }\n");
      out.write("            select,option{\n");
      out.write("              \n");
      out.write("               font-size: 25px;\n");
      out.write("           }\n");
      out.write("            th{\n");
      out.write("               background-color:rgb(255, 208, 0);\n");
      out.write("               font-size:27px;\n");
      out.write("               border:2px solid blue;\n");
      out.write("           }\n");
      out.write("           td{\n");
      out.write("               text-align:center;\n");
      out.write("               font-size: 20px;\n");
      out.write("               border: 2px solid blueviolet;\n");
      out.write("               background-color: rgb(250, 221, 95);\n");
      out.write("           }\n");
      out.write("           table{\n");
      out.write("               float: left;\n");
      out.write("               border:2px solid brown;\n");
      out.write("           }\n");
      out.write("           th{\n");
      out.write("               font-size:27px;\n");
      out.write("           }\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
               Connection conn=null;
               Statement st=null;
               ResultSet rs=null;
          try{
               Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                    st=conn.createStatement();
                     
                     
         
      out.write("\n");
      out.write("        <center>\n");
      out.write("            <form name=\"frm1\" action=\"scname.jsp\" method=\"get\">\n");
      out.write("                  <h2>-:View Timetabel:-</h2><hr>\n");
      out.write("                            <br><br><br><label><strong>Select Class Name:</strong></label>\n");
      out.write("                                 ");

                                       String qry ="select class from subject where steacher='"+session.getAttribute("tname")+"'  && ccode='"+session.getAttribute("ccode")+"'";;
                                     rs=st.executeQuery(qry); 
                                 
      out.write("\n");
      out.write("                             <select name=\"cst2\" id=\"mySelect\">\n");
      out.write("                                 ");

                                   while(rs.next())
                                        {
                                          String n=rs.getString(1);
                                 
      out.write("\n");
      out.write("                               <option style=\"font-size:20PX;\"> ");
      out.print(n );
      out.write("</option>\n");
      out.write("                                 ");

                                         }
                                 
      out.write("\n");
      out.write("                            </select><br><br>\n");
      out.write("                            <center><input type=\"submit\" value=\"Add\" style=\"align:center;font-size:25px;\"/><br><br>\n");
      out.write("            </form>\n");
      out.write("                            <div id=\"myDIV\">\n");
      out.write("                <div id=\"content\">\n");
      out.write("                   \n");
      out.write("                                ");

                                    
                                     String qry1="select * from student where cname='"+session.getAttribute("scs")+"'";;
                                     rs=st.executeQuery(qry1); 
                                     rs=st.executeQuery(qry1);
                              
                                        while(rs.next())
                                         {
                                  
      out.write("\n");
      out.write("                                <img src=\"");
      out.print( rs.getString(1));
      out.write("\" alt=\"Admin\" style=\"width:1800px;height:900px;\">\n");
      out.write("                       <iframe src=\"");
      out.print( rs.getString(1));
      out.write("\" frameborder=o style=\"width:100px;height:100px;\"></iframe\n");
      out.write("                                 \n");
      out.write("                                   ");

                                          }
                                    
      out.write("\n");
      out.write("                            \n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                           \n");
      out.write("                             ");

        }catch(Exception ex)
         {
           out.print(ex.getMessage());
         }
     
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
