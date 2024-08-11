package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.io.*;

public final class viewresult_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

 int count =0; 
 int count1 =0; 
 int per =0; 
 int count2=0; 
 int count3=0; 
 int per1 =0; 
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
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("            body\n");
      out.write("            {\n");
      out.write("            height: 100%;\n");
      out.write("            background-image:url(image/login.jpg);\n");
      out.write("            background-size: cover;\n");
      out.write("            color: white;\n");
      out.write("            font: 20px;  \n");
      out.write("            }\n");
      out.write("            select,option{\n");
      out.write("              \n");
      out.write("               font-size: 25px;\n");
      out.write("           }\n");
      out.write("           table{\n");
      out.write("            font-family: Calibri; \n");
      out.write("            color:blue; \n");
      out.write("            font-size:30px; \n");
      out.write("            font-style: normal;\n");
      out.write("            font-weight: bold;\n");
      out.write("            background-color:lightskyblue;\n");
      out.write("            border: 2px solid navy;\n");
      out.write("          }\n");
      out.write("            th{\n");
      out.write("               background-color:rgb(255, 208, 0);\n");
      out.write("               font-size:27px;\n");
      out.write("               border:2px solid blue;\n");
      out.write("           }\n");
      out.write("           td{\n");
      out.write("               text-align:center;\n");
      out.write("               font-size: 20px;\n");
      out.write("               border: 2px solid blueviolet;\n");
      out.write("                background-color:lightcyan;\n");
      out.write("           }\n");
      out.write("           table{\n");
      out.write("             \n");
      out.write("               border:2px solid brown;\n");
      out.write("           }\n");
      out.write("           th{\n");
      out.write("               font-size:27px;\n");
      out.write("           }\n");
      out.write("           label\n");
      out.write("           {\n");
      out.write("               font-size:20px;\n");
      out.write("           }\n");
      out.write("             h1\n");
      out.write("         {\n");
      out.write("            margin:0;\n");
      out.write("            background-image:url(image/home1.jpg);\n");
      out.write("            text-shadow:2px 3px white;\n");
      out.write("            text-align: center;\n");
      out.write("            color:red;\n");
      out.write("            font-style: italic;\n");
      out.write("            font-size:70px;\n");
      out.write("            background-size: cover;\n");
      out.write("         }\n");
      out.write("          #myDIV\n");
      out.write("            {\n");
      out.write("                border:2px solid blue;\n");
      out.write("              height:650px;\n");
      out.write("              width: 100%;\n");
      out.write("              overflow:auto;\n");
      out.write("            }\n");
      out.write("          #content\n");
      out.write("            {\n");
      out.write("              height: 8000px;\n");
      out.write("              width:100%;\n");
      out.write("            }\n");
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
                       String qry ="select * from result where type='"+session.getAttribute("etype")+"'  && enr='"+session.getAttribute("enrn")+"'  && code='"+session.getAttribute("ccode")+"'  && dname='"+session.getAttribute("dname")+"'";
                       rs=st.executeQuery(qry);
                  
             
      out.write("\n");
      out.write("      <h1>-:View Result:-</h1>\n");
      out.write("    <center>\n");
      out.write("         <form name=\"scfrm\" action=\"showredata.jsp\" method=\"get\">\n");
      out.write("        <br<br><br><label><strong>Select Department:</strong></label>\n");
      out.write("                                 ");
 
                                      rs=st.executeQuery(qry);     
                                 
      out.write("\n");
      out.write("                    <br><select name=\"ety\">\n");
      out.write("                                         <option>class</option>\n");
      out.write("                        <option>Practice</option>\n");
      out.write("                       </select><br><br><br>\n");
      out.write("                             <input type=\"submit\" value=\"Show\" style=\"font-size:30px;\"><br><br>\n");
      out.write("                </form> <br> \n");
      out.write("<div id=\"myDIV\">\n");
      out.write("                <div id=\"content\">\n");
      out.write("      <table align=\"center\" cellpadding = \"10\">\n");
      out.write("           <tr>\n");
      out.write("                            <th><b>Date</b></th>\n");
      out.write("                            <th><b>subject</b></th>  \n");
      out.write("                            <th><b>TYPE</b></th>\n");
      out.write("                             <th><b>Mark obtained</b></th>\n");
      out.write("                             <th><b>Out of</b></th>\n");
      out.write("                              <th><b>Percentage</b></th>\n");
      out.write("                             \n");
      out.write("                            \n");
      out.write("                         </tr>\n");
      out.write("                         ");
      out.write("\n");
      out.write("                           ");
      out.write("\n");
      out.write("                           ");
      out.write("\n");
      out.write("                           ");
      out.write("\n");
      out.write("                            ");
      out.write("\n");
      out.write("                           ");
      out.write("\n");
      out.write("                         ");

                              while(rs.next())
                        {
                            count=rs.getInt(9);
                            count1=rs.getInt(8);
                            per=per=(count*100)/count1;
                            count2=count2+per;
                            count3=count3+1;
                            
      out.write("\n");
      out.write("                                  <tr>\n");
      out.write("                                   <td>");
      out.print(rs.getString(4) );
      out.write("</td>\n");
      out.write("                                   <td>");
      out.print(rs.getString(6) );
      out.write("</td>\n");
      out.write("                                   <td>");
      out.print(rs.getString(7) );
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getInt(9) );
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print(rs.getInt(8) );
      out.write("</td>\n");
      out.write("                                    <td>");
      out.print( per );
      out.write("</td>\n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                    \n");
      out.write("                                   \n");
      out.write("                                  \n");
      out.write("                                  </tr>\n");
      out.write("                                  \n");
      out.write("                                  ");

                                       
                                      }

      out.write("\n");
      out.write("     \n");
      out.write("     \n");
      out.write("            </table>\n");
      out.write("        </td>\n");
      out.write("     </tr>\n");
      out.write("  </table>\n");
      out.write("  <table>\n");
      out.write("<tr>\n");
      out.write("     ");
 
              per1=count2/count3;
    
      out.write("\n");
      out.write("    <td style=\"font-size:35px;\">percentage</td><td style=\"font-size:35px;\">");
      out.print(per1);
      out.write("%</td>\n");
      out.write("    ");
 
        count2=0;
        count3=0;
              per1=0;
    
      out.write("\n");
      out.write("</tr>\n");
      out.write("            </table>\n");
      out.write("   \n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("</div>\n");
      out.write("</center>\n");
      out.write("  ");

      
                 }catch(Exception ex)
                     {
                          
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
