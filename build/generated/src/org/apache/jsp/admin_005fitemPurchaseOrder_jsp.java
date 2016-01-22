package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;

public final class admin_005fitemPurchaseOrder_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Order for Shipment</title>\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("           \n");
      out.write("            .tbl\n");
      out.write("            {\n");
      out.write("                border:1px solid black;\n");
      out.write("                width:100%;\n");
      out.write("                font-size:20px;\n");
      out.write("                color:black;\n");
      out.write("                background-position: right;\n");
      out.write("         \n");
      out.write("            #form1\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/A21.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-color: white;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            } \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("       <script>\n");
      out.write("function validateForm() {\n");
      out.write("    var x = document.forms[\"myForm\"][\"t1\"].value;\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    if (x==null || x==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter person name \");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    \n");
      out.write("}\n");
      out.write("</script>   \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <h3>Customer Details for shipment</h3>\n");
      out.write("        \n");
      out.write("    \n");
      out.write("        <div>\n");
      out.write("            \n");
      out.write("         ");
      out.write('\n');
      out.write('\n');

   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
    
    
      out.write('\n');

 try
        {
        PreparedStatement pst=con.prepareStatement("select *from purchase");
        ResultSet rs=pst.executeQuery();
        out.println("<center> <table class=\"tbl\" > <tr style='background-color:black;color:white;'> <td>Name</td><td>  Email </td><td> Mobile</td><td> State</td><td> City </td><td> Pin</td><td> Address</td>  <td>Item</td><td>Status of Delivery</td> </tr>");
        int i;
        while(rs.next())
           {
            out.println("<tr>");    
            for(i=1;i<=9;i++)
             {
                 out.println("<td>"+rs.getString(i)+"");
                 if(i==8)
                 {
                     
                     Statement st=con.createStatement();
                     ResultSet rsid= st.executeQuery("select id from laptop where brand='"+rs.getString(i)+"'");
                     if(rsid.next())
                     {
                     out.println("<br>(Product id="+rsid.getString(1)+")");
                     }
                     else
                     {
                         out.println("<br>(Not found)");
                     }
                     
                 }
                 out.println("</td>");
            }
        }
        out.println("</table> </center>");
        
        out.println("<br> <br> <form action=\"admin_profile.jsp\" method=\"post\"> <input type=\"submit\" value=\" GO Back \" class=\"btn\" ></input></form>");   
        
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
        
        
      out.write("\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("    \n");
      out.write("        <form method=\"post\" action=\"deliver.jsp\" onsubmit=\"return validateForm();\" name=\"myForm\">\n");
      out.write("            Enter customer Email to update Delivery Status :<input type=\"text\" name=\"t1\">\n");
      out.write("            <input type=\"submit\" class=\"btn\" value=\"Update!!\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        \n");
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
