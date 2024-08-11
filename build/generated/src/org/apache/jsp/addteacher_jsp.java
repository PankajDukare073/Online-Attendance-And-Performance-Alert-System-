package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import java.util.*;
import java.io.*;

public final class addteacher_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("  <head>\n");
      out.write("        <title>Student Registration Form</title>\n");
      out.write("   <style>\n");
      out.write("     body\n");
      out.write("            {\n");
      out.write("              height: 100%;\n");
      out.write("              background-image:url(image/class.jpg);\n");
      out.write("              background-size: cover;\n");
      out.write("            }\n");
      out.write("       table{\n");
      out.write("              font-family: Calibri; \n");
      out.write("              color:blue; \n");
      out.write("              font-size:30px; \n");
      out.write("              font-style: normal;\n");
      out.write("              font-weight: bold;\n");
      out.write("              background-color:lightpink;\n");
      out.write("              border: 2px solid navy\n");
      out.write("            }\n");
      out.write("       input[type=text],input[type=password],input[type=email],input[type=date]\n");
      out.write("          {\n");
      out.write("            width:100%;\n");
      out.write("            padding:10px 8px;\n");
      out.write("            margin:8px 0;\n");
      out.write("            display:inline-block;\n");
      out.write("            border:1px solid #ccc;\n");
      out.write("            box-sizing:border-box;\n");
      out.write("          }\n");
      out.write("          input[type=radio]\n");
      out.write("          {\n");
      out.write("            border: 30px solid red;\n");
      out.write("          }\n");
      out.write("          select,option{\n");
      out.write("              \n");
      out.write("               font-size: 25px;\n");
      out.write("          }\n");
      out.write("     \n");
      out.write("       h1\n");
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
      out.write("      \n");
      out.write("    </style>\n");
      out.write("  </head>\n");
      out.write(" <body>\n");
      out.write("  <form name=\"adsfrm\" action=\"addteacherdata.jsp\" method=\"get\">\n");
      out.write("      <h1>-:Add Teacher:-</h1>\n");
      out.write("      <table align=\"center\" cellpadding = \"10\">\n");
      out.write("          <tr>\n");
      out.write("              ");
 
                   
                    Connection conn=null;
                    Statement st=null;
                    ResultSet rs=null;
            
                    Class.forName("com.mysql.jdbc.Driver");
                    conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost:3306/attendance","root","");
                    st=conn.createStatement();
                       String qry ="select dname from department where ccode='"+session.getAttribute("ccode")+"'";
                       rs=st.executeQuery(qry);
            
      out.write("\n");
      out.write("               <td>SELECT DEPARTMENT:</td><td><select name=\"tt1\">\n");
      out.write("            ");

                   while(rs.next())
                        {
                             String n=rs.getString(1);
            
      out.write("\n");
      out.write("                   <option> ");
      out.print(n );
      out.write("</option>\n");
      out.write("            ");

                        }
            
      out.write("\n");
      out.write("                    </select>\n");
      out.write("               \n");
      out.write("             UPLOAD PHOTO:\n");
      out.write("             <input type=\"file\" name=\"tt2\" value=\"\" required/></td>\n");
      out.write("         </tr>\n");
      out.write("            \n");
      out.write("             <tr>\n");
      out.write("             <td>student view name:</td>\n");
      out.write("             <td><input type=\"text\" name=\"tt28\" placeholder=\"Enter student view name\" value=\"\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td>USERNAME:</td>\n");
      out.write("             <td><input type=\"text\" name=\"tt3\" placeholder=\"Enter Username of student\" value=\"\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td>PASSWORD:</td>\n");
      out.write("             <td><input type=\"password\" name=\"tt4\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" placeholder=\"Enter Password of Student\" value=\"\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td>FULL NAME:</td>\n");
      out.write("             <td><input type=\"text\" name=\"tt5\" placeholder=\"Enter Full Name Of Student\" value=\"\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td>DATE OF BIRTH:</td>\n");
      out.write("             <td><input type=\"date\" name=\"tt6\" value=\"1988-04-07\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td>EMAIL ID:</td> \n");
      out.write("             <td><input type=\"email\" name=\"tt7\"  placeholder=\"Enter Email id Of Student\" value=\"p12@gmail.com\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td>MOBILE NUMBER</td>\n");
      out.write("             <td><input type=\"text\" name=\"tt8\" pattern=\"[0-9]{10}\" placeholder=\"Enter Mobile Number Of Teacher\"   value=\"9373809473\" required/></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>GENDER:</td>\n");
      out.write("            <td>Male <input type=\"radio\" name=\"tt9\" value=\"Male\" />\n");
      out.write("                Female <input type=\"radio\" name=\"tt9\" value=\"Female\" /></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("             <td><br />ADDRESS:<br /><br /></td>\n");
      out.write("             <td><textarea  rows=\"4\" cols=\"90\" name=\"tt11\" placeholder=\"Enter Teacher Address\" value=\"pune\" required ></textarea></textarea></td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td>PERMANT ADDRESS:</td>\n");
      out.write("            <td><textarea  rows=\"4\" cols=\"90\" name=\"tt12\" placeholder=\"Enter Teacher Permant Address\" value=\"pune\" required ></textarea></textarea></td>\n");
      out.write("       </tr>\n");
      out.write("       <tr>\n");
      out.write("            <td>PIN CODE:</td>\n");
      out.write("            <td><input type=\"text\" name=\"tt13\" pattern=\"[0-9]{6}\" title=\"Must contain six number\" placeholder=\"Enter Pin Code\" value=\"410504\" required/></td>\n");
      out.write("       </tr>\n");
      out.write("       <tr>\n");
      out.write("            <td>STATE:</td>\n");
      out.write("            <td><input type=\"text\" name=\"tt14\" value=\"Maharastra\" required/></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("            <td>COUNTRY:</td>\n");
      out.write("            <td><input type=\"text\" name=\"tt15\" value=\"India\" /></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("      <td>QUALIFICATION: <br /><br /><br /><br /><br /><br /><br /></td>\n");
      out.write("      <td><table>\n");
      out.write("                <tr>\n");
      out.write("                    <td align=\"center\"><b>Sr.No.</b></td>\n");
      out.write("                    <td align=\"center\"><b>Examination</b></td>\n");
      out.write("                    <td align=\"center\"><b>Board</b></td>\n");
      out.write("                    <td align=\"center\"><b>Percentage</b></td>\n");
      out.write("                    <td align=\"center\"><b>Year of Passing</b></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>1</td>\n");
      out.write("                    <td>Class X:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt16\" placeholder=\"Enter Board name\" value=\"Maharastra\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt17\" placeholder=\"Enter Percentage\" value=\"70\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt18\" placeholder=\"Enter Year of passings\" value=\"1996\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>2</td>\n");
      out.write("                    <td>Class XII:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt19\" placeholder=\"Enter Board name\" value=\"Maharastra\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt20\" placeholder=\"Enter Percentage\" value=\"75\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt21\" placeholder=\"Enter Year of passing\" value=\"1998\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>3</td>\n");
      out.write("                    <td>Graduation:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt22\" placeholder=\"Enter Board name\" value=\"Maharastra\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt23\" placeholder=\"Enter Percentage\" value=\"73\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt24\" placeholder=\"Enter Year of passing\" value=\"2000\" required/></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>4</td>\n");
      out.write("                    <td>Masters:</td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt25\" placeholder=\"Enter Board name\" value=\"Maharastra\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt26\" placeholder=\"Enter Percentage\" value=\"78\" required/></td>\n");
      out.write("                    <td><input type=\"text\" name=\"tt27\" placeholder=\"Enter Year of passing\" value=\"2002\" required/></td>\n");
      out.write("              </tr>\n");
      out.write("            </table>\n");
      out.write("        </td>\n");
      out.write("     </tr>\n");
      out.write("     <tr>\n");
      out.write("        <td></td><td><input type=\"submit\" value=\"Submit\" style=\"font-size:30px;\"><input type=\"reset\" value=\"Reset\" style=\"font-size:30px; margin-left:275px;\"></td>\n");
      out.write("    </tr>\n");
      out.write("  </table>\n");
      out.write(" </form>\n");
      out.write("</body>\n");
      out.write("</html>");
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
