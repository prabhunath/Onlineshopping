package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;

public final class admin_005fupdate_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/header.jsp");
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
      out.write("                <tr><td>\n");
      out.write("                <input style=\"border:0px solid white;border-radius:30px 0px 0px 30px; width:300px;\"  >\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                <input style=\"border:0px solid white;border-radius:0px 30px 30px 0px; \" type=\"submit\" value=\"Search a product\" >\n");
      out.write("                    </td>\n");
      out.write("            </tr>\n");
      out.write("            </table>\n");
      out.write("            </li>\n");
      out.write("           \n");
      out.write("           <a href=\"index.jsp\"> <li style=\"background-image:url('Images//logo.png'); width:60px;height:50px; border:0px solid white;border-radius:30px; \">\n");
      out.write("               </li></a>\n");
      out.write("  </ul>\n");
      out.write("        </header>\n");
      out.write("        </body>\n");
      out.write("</html>");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Admin Update</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .div1{\n");
      out.write("                \n");
      out.write("                \n");
      out.write("                border:1px solid black;\n");
      out.write("               \n");
      out.write("                display: inline-block;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            .tbl\n");
      out.write("            {\n");
      out.write("                border:1px solid black;\n");
      out.write("\n");
      out.write("                width:100%;\n");
      out.write("                font-size:20px;\n");
      out.write("                color:black;\n");
      out.write("                background-position: right;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            \n");
      out.write("           \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        <script>\n");
      out.write("function validateForm() {\n");
      out.write("    var x = document.forms[\"myForm\"][\"t1\"].value;\n");
      out.write("    var y=document.forms[\"myForm\"][\"t2\"].value;\n");
      out.write("    var a=document.forms[\"myForm\"][\"t3\"].value;\n");
      out.write("    var b=document.forms[\"myForm\"][\"t4\"].value;\n");
      out.write("    var c=document.forms[\"myForm\"][\"t5\"].value;\n");
      out.write("    var d=document.forms[\"myForm\"][\"t6\"].value;\n");
      out.write("    var e=document.forms[\"myForm\"][\"t7\"].value;\n");
      out.write("    \n");
      out.write("    if (x==null || x==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter Name\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    if (y==null || y==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Email\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    if (a==null || a==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  PASSWORD\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (b==null || b==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Mobile Number\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (c==null || c==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Address\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (d==null || d==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Company Name\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (e==null || e==\"\") {\n");
      out.write("        alert(\"Required Field Must Select product to sale!!\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>   \n");
      out.write("      \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("<h3>Update Profile</h3>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <center>\n");
      out.write("        <form method=\"post\" action=\"admin_update.jsp\" onsubmit=\"return validateForm();\" name=\"myForm\" >\n");
      out.write("            \n");
      out.write("            <table class=\"tbl\" id=\"form1\">\n");
      out.write("            \n");
      out.write("            <tr>  <td>Name              </td><td><input type=\"text\" name=\"t1\"   class=\"btn\"></td></tr>\n");
      out.write("            <tr>  <td>Email             </td><td> <input type=\"text\" name=\"t2\"  class=\"btn\"></td></tr>\n");
      out.write("            <tr>  <td>Password          </td><td> <input type=\"password\" name=\"t3\"  class=\"btn\" ></td></tr>\n");
      out.write("            <tr>  <td>Mobile Number      </td><td> <input type=\"text\" name=\"t4\"  class=\"btn\" ></td></tr>\n");
      out.write("           <tr>  <td>Address                </td><td><input type=\"text\" name=\"t5\"  class=\"btn\" ></td></tr>\n");
      out.write("           <tr>  <td>Company                </td><td><input type=\"text\" name=\"t6\"  class=\"btn\" ></td></tr>\n");
      out.write("           <tr>  <td>Product to sale :Mobile <input type=\"checkbox\" value=\"Mobile\" name=\"t7\" > Laptop<input type=\"checkbox\" value=\"Laptop\" name=\"t7\" >             \n");
      out.write("                   <br>\n");
      out.write("                   &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; Camera<input type=\"checkbox\" value=\"Camers\" name=\"t7\" >\n");
      out.write("            Cloths<input type=\"checkbox\" value=\"Cloths\" name=\"t7\">\n");
      out.write("\n");
      out.write("            \n");
      out.write("            <tr>  <td></td><td> <input type=\"submit\" value=\"Update\" class=\"btn\"></td></tr>\n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("        \n");
      out.write("        ");

        try
                          {                    
        String name,email,password,mobile,address,company,product;
        name=request.getParameter("t1");
        email=request.getParameter("t2");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        company=request.getParameter("t6");
        product=request.getParameter("t7");
        
        String s;
        if(name!=null)
                       {
        s="update admintbl set email='"+email+"' , password='"+password+"', mobile='"+mobile+"', address='"+address+"',company= '"+company+"',product='"+product+"' where name='"+name+"'";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from admintbl");
        
        if(name!=null)
                       {
            out.println("Name &nbsp Email &nbsp Password  <br>");
        while(rs.next())
                       {
            
            out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"<br>");
            
        }
            out.println("<br> <br> Updated    ");
               }
               }
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
        
        
        
        
        
      out.write("\n");
      out.write("        \n");
      out.write("        <center>\n");
      out.write("        <div class=\"div1\">\n");
      out.write("            <div class=\"div1\">\n");
      out.write("        <form method=\"post\" action=\"admin_profile.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Go to Profile\">\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            <div class=\"div1\">    \n");
      out.write("        <form method=\"post\" action=\"admin_itemPurchaseOrder.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"ItemPurchaseOrder\" >\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("            <div class=\"div1\">   \n");
      out.write("        <form method=\"post\" action=\"admin_itemSale.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Product to sale\">\n");
      out.write("        </form>\n");
      out.write("                \n");
      out.write("            </div>\n");
      out.write("                \n");
      out.write("        </div>\n");
      out.write("        </center>\n");
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
