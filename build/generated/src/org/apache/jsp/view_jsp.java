package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;

public final class view_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(3);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/connect.jsp");
    _jspx_dependants.add("/footer.jsp");
  }

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
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("                    ul li {\n");
      out.write("            list-style-type: none;\n");
      out.write("            margin: 0;\n");
      out.write("            padding: 10;\n");
      out.write("            display: inline;\n");
      out.write("            font-size: 18;\n");
      out.write("            float: right;\n");
      out.write("            color:white;\n");
      out.write("           \n");
      out.write("               \n");
      out.write("        }\n");
      out.write("        a{\n");
      out.write("            color:white;\n");
      out.write("        }\n");
      out.write("\n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <header>\n");
      out.write("<div style=\"border:1px solid black; width:100%; height:60px;background-color:black; align:center; border:opx solid white;border-radius:2px; \">\n");
      out.write("    <ul class=\"sub-menu dl-menu\">\n");
      out.write("            \n");
      out.write("            <li><a href=\"user_register.jsp\">User Register</a></li>\n");
      out.write("            <li><a href=\"user_login.jsp\">User Login</a></li>\n");
      out.write("            <li><a href=\"admin_register.jsp\">Admin Register</a></li>\n");
      out.write("            <li><a href=\"admin_login.jsp\">Admin Login</a></li>\n");
      out.write("            <li><a href=\"report.jsp\">Report</a></li>    \n");
      out.write("            <li><table>\n");
      out.write("                <tr>\n");
      out.write("                    <form action=\"search.jsp\" method=\"POST\">\n");
      out.write("                    <td>\n");
      out.write("                <input style=\"border:0px solid white;border-radius:30px 0px 0px 30px; width:300px;\"  name=\"search\">\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        \n");
      out.write("                            <input style=\"border:0px solid white;border-radius:0px 30px 30px 0px; \" type=\"submit\" value=\"Search\" >\n");
      out.write("                         \n");
      out.write("                </td>\n");
      out.write("                 </form> \n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("            </li>\n");
      out.write("           \n");
      out.write("           <a href=\"index.jsp\"> <li style=\"background-image:url('Images//logo.png'); width:60px;height:50px; border:0px solid white;border-radius:30px; \">\n");
      out.write("               </li></a>\n");
      out.write("            <h2 style=\"color:red;\">ShopZyada</h2>\n");
      out.write("  </ul>\n");
      out.write("        </header>\n");
      out.write("        </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Mobile View</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .tbl\n");
      out.write("            {\n");
      out.write("                border:1px solid black;\n");
      out.write("                width:100%;\n");
      out.write("                height:100px;\n");
      out.write("                font-size:30px;\n");
      out.write("                color:black;\n");
      out.write("                background-position: right; \n");
      out.write("            }\n");
      out.write("        body{\n");
      out.write("                background-repeat: round;\n");
      out.write("                width:98%;\n");
      out.write("                height:600px;\n");
      out.write("            }\n");
      out.write("        \n");
      out.write("        </style>    \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><h1> Details Of Your Selected Materials </h1></center>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <center>  <table class=\"tbll\"><tr><td>Brand</td><td>Model</td><td>Price</td> <td>Sim Type</td><td>OS</td><td>Processor</td><td>Size</td><td>Camera</td><td>Weight</td><td>Battery </td><td>Warranty </td><td>Image</td> <td>ID</td></tr></table></center>\n");
      out.write("    <center>    \n");
      out.write("    <table class=\"tbl\" >\n");
      out.write("        ");
      out.write('\n');
      out.write('\n');

   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
    
    
      out.write(" \n");
      out.write("        ");

            
            try
            {  
            HttpSession se=request.getSession();
            String idno =(String)se.getAttribute("idd");
            String money="";
            String brand;
            PreparedStatement  pst =con.prepareStatement("select * from mobile where id='"+idno+"'");
            ResultSet rs=pst.executeQuery();
            Statement st=con.createStatement();
            ResultSet rr=st.executeQuery("select * from mobile where id='"+idno+"'");
            out.println(" <tr>");
            while(rr.next())
            {
                for(int i=1;i<=13;i++)
                {
                    if(i==12)
                    {
                        out.println("<td class=\"dd3\"></td>");
                    }
                    else
                    {
                        
                    }
                    if(i==1)
                    {
                        brand=rr.getString(1);
                        se.setAttribute("brandd", brand);
                    }
                    if(i==3)
                    {
                        money=rr.getString(i);
                    }
                out.println("<td>"+rr.getString(i)+"</td>");
                
                
                }
            }
            se.setAttribute("money", money); 
            out.println("</tr>");
           out.println("You have to Pay "+ money );  
           String mode;
           mode=request.getParameter("x");
            if(mode!=null)
            {
                out.println(mode);
                if(mode.equals("online"))
                {
                response.sendRedirect("onlinePayment.jsp");
                }
                else
                {
                    response.sendRedirect("purchase.jsp");
                }
            }  
            }
            catch(Exception e)
            {
               e.printStackTrace();
            }
            
      out.write("\n");
      out.write("        \n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("            <marquee behavior=\"alternate\">\n");
      out.write("                <center><h3 class=\"heading\">NOTE:Currently online facility is not available</h3>\n");
      out.write("                </center>\n");
      out.write("            </marquee>\n");
      out.write("    <form action=\"purchase2.jsp\" method=\"post\">\n");
      out.write("        <table class=\"tbl\">\n");
      out.write("            <th>Select Payment Mode</th> \n");
      out.write("            <tr><td>Online</td><td><input type=\"radio\" name=\"x\" value=\"online\"></td></tr>\n");
      out.write("            <tr><td>Cash on delivery</td><td><input type=\"radio\" name=\"x\" value=\"offline\"></td></tr>\n");
      out.write("             <tr><td>   </td><td>    <input type=\"submit\" value=\"DoPayment\"></td></tr>    \n");
      out.write("        </table>     \n");
      out.write("     </form>  \n");
      out.write("    </body>\n");
      out.write("    ");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("footer{\n");
      out.write("    \n");
      out.write("    height:50px;\n");
      out.write("    background-color:black;\n");
      out.write("    bottom:0px;\n");
      out.write("    left:0px;\n");
      out.write("    right:0px;\n");
      out.write("    margin-bottom:0px;\n");
      out.write("    color:white;\n");
      out.write("}\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("   \n");
      out.write("    <footer>\n");
      out.write("        <center>\n");
      out.write("  <p>Created by: Prabhunath yadav , Contact information: <a href=\"mailto:prabhunath.1245@gmail.com\">prabhunath.1245@gmail.com</p>\n");
      out.write("        </center>\n");
      out.write("</footer>\n");
      out.write("</html>\n");
      out.write("\n");
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
