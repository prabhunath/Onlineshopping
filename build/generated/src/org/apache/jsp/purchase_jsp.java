package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;
import java.sql.DriverManager;
import java.sql.Connection;

public final class purchase_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Purchase</title>\n");
      out.write("        <style>\n");
      out.write("            \n");
      out.write("            .tbl\n");
      out.write("            {\n");
      out.write("                border:1px solid black;\n");
      out.write("                width:100%;\n");
      out.write("                height:100px;\n");
      out.write("                font-size:20px;\n");
      out.write("                color:black;\n");
      out.write("                background-position: right;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            } \n");
      out.write("        </style>        \n");
      out.write("          \n");
      out.write("       <script>\n");
      out.write("function validateForm() {\n");
      out.write("    var x = document.forms[\"myForm\"][\"t1\"].value;\n");
      out.write("    var y=document.forms[\"myForm\"][\"t2\"].value;\n");
      out.write("     var z=document.forms[\"myForm\"][\"t3\"].value;\n");
      out.write("     var a=document.forms[\"myForm\"][\"t4\"].value;\n");
      out.write("     var b=document.forms[\"myForm\"][\"t5\"].value;\n");
      out.write("     var c=document.forms[\"myForm\"][\"t6\"].value;\n");
      out.write("     var d=document.forms[\"myForm\"][\"t7\"].value;\n");
      out.write("    \n");
      out.write("     \n");
      out.write("     \n");
      out.write("     \n");
      out.write("    if (x==null || x==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Name \");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("    if (y==null || y==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Email\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (z==null || z==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Mobile Number\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (a==null || a==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  State\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (b==null || b==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  city\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (c==null || c==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  pin number\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    if (d==null || d==\"\") {\n");
      out.write("        alert(\"Required Field Must Enter  Address\");\n");
      out.write("        return false;\n");
      out.write("    }\n");
      out.write("    \n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</script>     \n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("     <h3>Delivery address details:</h3>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    ");
      out.write('\n');
      out.write('\n');

   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
    
    
      out.write(' ');
      out.write('\n');

  try
  {
        int x=0; 
        String name ,mobile,state,city,pin ,address,item;
        name=request.getParameter("t1");
        
        mobile=request.getParameter("t3");
        state = request.getParameter("t4");
        city=request.getParameter("t5");
        pin=request.getParameter("t6");
        address=request.getParameter("t7");
        //item=request.getParameter("t8");
        
        
        HttpSession se=request.getSession();
        String email=(String)se.getAttribute("user_email");
        String product_id =(String)se.getAttribute("product_id"); 
        String deliveredby=(String)se.getAttribute("owner_email");
        out.println("OWNER:"+deliveredby+" <br>");
        se.setAttribute("id", product_id);
        out.println("<br>USER:"+email);
        String s;
        String status="not delivered";
        s="insert into purchase values('"+name+"','"+email+"','"+mobile+"','"+state+"','"+city+"','"+pin+"','"+
                address+"','"+product_id+"','"+ status+"','"+"__"+"','"+product_id+"' )";
         if(name!=null)
          {
            PreparedStatement pst=con.prepareStatement(s);
            int i=pst.executeUpdate();
            if(i>0)
               {
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *from purchase");
                while(rs.next())
                    {
                        x=1;
                        }
                 }
        if(x==1)
        {
            out.println("Item Has Been Confirmed Thank You For Shopping With Us!!");
        }
    } 
         
         
         
      out.write("\n");
      out.write("         \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        <form method=\"post\" action=\"purchase.jsp\" onsubmit=\"return validateForm();\" name=\"myForm\">\n");
      out.write("            \n");
      out.write("            <table class=\"tbl\" id=\"form1\"> \n");
      out.write("                \n");
      out.write("           <tr>  <td> Name</td><td><input type=\"text\" name=\"t1\"></td></tr>\n");
      out.write("           <tr>  <td> Mobile</td><td><input type=\"text\" name=\"t3\" ></td></tr>\n");
      out.write("            <tr>  <td>State</td><td><input type=\"text\" name=\"t4\" ></td></tr>\n");
      out.write("           <tr>  <td> City</td><td><input type=\"text\" name=\"t5\" ></td></tr>\n");
      out.write("            <tr>  <td>PIN</td><td><input type=\"text\" name=\"t6\" ></td></tr>\n");
      out.write("            <tr>  <td>Address</td><td><textarea  name=\"t7\"  rows=\"4\" cols=\"50\" ></textarea></td></tr>\n");
      out.write("            <tr>  <td>Item To Be purchase</td><td> <input type=\"text\" name=\"t8\" value= \"");
out.println(product_id); 
      out.write("\" disabled></td></tr>\n");
      out.write("            <tr>  <td>   </td><td>  <input type=\"submit\" value=\"Confirm Material\" ></td></tr>\n");
      out.write("            </table> \n");
      out.write("        </form>\n");
      out.write("    </center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <form action=\"clothsMarket.jsp\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"Go To Cloths Market\" class=\"btn\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("            <form action=\"laptopMarket.jsp\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"Go To Laptop Market\" class=\"btn\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("            <form action=\"mobileMarket.jsp\" method=\"post\">\n");
      out.write("            <input type=\"submit\" value=\"Go To Mobile Market\" class=\"btn\">\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("        ");

               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
      out.write("\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("           <form method=\"post\" action=\"index.jsp\">\n");
      out.write("        \n");
      out.write("        <input type = \"Submit\" value=\"Go To Home\" class=\"btn\">\n");
      out.write("        </form> \n");
      out.write("    </body>\n");
      out.write("     ");
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
