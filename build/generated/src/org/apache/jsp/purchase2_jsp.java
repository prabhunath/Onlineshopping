package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;

public final class purchase2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Purchase</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .div1{\n");
      out.write("                \n");
      out.write("                width:700px;\n");
      out.write("                border:2px solid #00ffcc;\n");
      out.write("                margin-left: 60px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .heading\n");
      out.write("            {\n");
      out.write("                border:3px solid #00cc99;\n");
      out.write("                width:700px;\n");
      out.write("                height:250px;\n");
      out.write("                background-image: url(\"Images/banner.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                color:#ff3333;\n");
      out.write("                border-radius:50px 50px 50px 50px;\n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .tbl\n");
      out.write("            {\n");
      out.write("                border:4px solid #66ff00;\n");
      out.write("                \n");
      out.write("                border-radius:34px 0px 34px 0px;\n");
      out.write("                width:700px;\n");
      out.write("                font-size: x-large;\n");
      out.write("                color:#ff3333;\n");
      out.write("                background-position: right;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            .btn\n");
      out.write("            {\n");
      out.write("               \n");
      out.write("                border:2px solid;\n");
      out.write("                border-radius :12px 0px 12px 0px;\n");
      out.write("            }\n");
      out.write("            #form1\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/A21.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-color: white;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("           body{\n");
      out.write("                background-color: #00cc99;\n");
      out.write("                background-image: url(\"Images/web7.jpg\");\n");
      out.write("              \n");
      out.write("                background-repeat: round;\n");
      out.write("                width:98%;\n");
      out.write("                height:600px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <script>\n");
      out.write("function validateForm() {\n");
      out.write("    var x = document.forms[\"myForm\"][\"t1\"].value;\n");
      out.write("    var y=document.forms[\"myForm\"][\"t2\"].value;\n");
      out.write("     var z=document.forms[\"myForm\"][\"t3\"].value;\n");
      out.write("     var a=document.forms[\"myForm\"][\"t4\"].value;\n");
      out.write("     var b=document.forms[\"myForm\"][\"t5\"].value;\n");
      out.write("     var c=document.forms[\"myForm\"][\"t6\"].value;\n");
      out.write("     var d=document.forms[\"myForm\"][\"t7\"].value;\n");
      out.write("     \n");
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
      out.write("</script>         \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>  <h1 class=\"heading\">Fill The Materials to be purchase</h1></center>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("        ");

        try
                              {
                                  int x=0; 
        String name ,email,mobile,state,city,pin ,address,item;
        name=request.getParameter("t1");
        email=request.getParameter("t2");
        mobile=request.getParameter("t3");
        state = request.getParameter("t4");
        city=request.getParameter("t5");
        pin=request.getParameter("t6");
        address=request.getParameter("t7");
        //item=request.getParameter("t8");
        
        
        HttpSession se=request.getSession();
            String brand =(String)se.getAttribute("brandd"); 
            se.setAttribute("id", brand);
        
        
        
        
        
        //HttpSession se=request.getSession();
        String s;
        String status="not delivered";
        s="insert into purchase values('"+name+"','"+email+"','"+mobile+"','"+state+"','"+city+"','"+pin+"','"+address+"','"+brand+"','"+ status+"')";
        Class.forName("com.mysql.jdbc.Driver");
         //String name=(String)se.getAttribute("id");
         if(name!=null)
                         {
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
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
           // response.sendRedirect("purchase.jsp");
            out.println("Item Has Been Confirmed Thank You For Shopping With Us!!");
        }
        
        
               }
         
         
         out.println("You have Selected "+ brand);
         
         
         
      out.write("\n");
      out.write("         \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    \n");
      out.write("    <center>\n");
      out.write("        <form method=\"post\" action=\"purchase2.jsp\" onsubmit=\"return validateForm();\" name=\"myForm\">\n");
      out.write("            \n");
      out.write("            <table class=\"tbl\" id=\"form1\"> \n");
      out.write("                \n");
      out.write("                <tr>  <td> Name</td><td><input type=\"text\" name=\"t1\" class=\"btn\"></td></tr>\n");
      out.write("            <tr>  <td>Email</td><td><input type=\"text\" name=\"t2\" class=\"btn\"></td></tr> \n");
      out.write("           <tr>  <td> Mobile</td><td><input type=\"text\" name=\"t3\" class=\"btn\"></td></tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <tr>  <td>State</td><td><input type=\"text\" name=\"t4\" class=\"btn\"></td></tr>\n");
      out.write("            \n");
      out.write("           <tr>  <td> City</td><td><input type=\"text\" name=\"t5\" class=\"btn\"></td></tr>\n");
      out.write("            <tr>  <td>PIN</td><td><input type=\"text\" name=\"t6\" class=\"btn\"></td></tr>\n");
      out.write("            <tr>  <td>Address</td><td><textarea  name=\"t7\" class=\"btn\" rows=\"4\" cols=\"50\" ></textarea></td></tr>\n");
      out.write("            <tr>  <td>Item To Be purchase</td><td> <input type=\"text\" name=\"t8\" value= \"");
out.println(brand); 
      out.write("\"    class=\"btn\" disabled></td></tr>\n");
      out.write("            <tr>  <td>   </td><td>  <input type=\"submit\" value=\"Confirm Material\" class=\"btn\"></td></tr>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            </table> \n");
      out.write("            \n");
      out.write("            \n");
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
      out.write("          <form method=\"post\" action=\"index.jsp\">\n");
      out.write("        \n");
      out.write("        <input type = \"Submit\" value=\"Go To Home\" class=\"btn\">\n");
      out.write("        </form>  \n");
      out.write("            \n");
      out.write("            \n");
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
