package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;

public final class mobilell_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Mobile</title>\n");
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
      out.write("                height:230px;\n");
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
      out.write("                background-image: url(\"Images/sony1.jpeg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-color: white;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            body{\n");
      out.write("                background-color: #00cc99;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center>   <h1 class=\"heading\">Enter details of your laptop product!!</h1></center>\n");
      out.write("    <center>\n");
      out.write("        <form action=\"mobilell.jsp\" method=\"post\" >\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <table class=\"tbl\" id=\"form1\">\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            <tr>  <td>Brand             </td><td> <input type=\"text\" name=\"t1\"  class=\"btn\"></td></tr>\n");
      out.write("            <tr > <td>Model    </td><td><input type=\"text\" name=\"t2\" class=\"btn\" ></td></tr> \n");
      out.write("            <tr > <td>Price             </td><td>  <input type=\"text\" name=\"t3\" class=\"btn\">Rs/-  </td></tr>\n");
      out.write("            \n");
      out.write("            <tr > <td>Sim      </td><td> <input type=\"text\" name=\"t4\" class=\"btn\">Single or dual</td></tr>\n");
      out.write("            <tr > <td>Os     </td><td> <input type=\"text\" name=\"t5\" class=\"btn\"></td></tr>\n");
      out.write("            <tr > <td>processor     </td><td>  <input type=\"text\" name=\"t6\" class=\"btn\"></td></tr>\n");
      out.write("            <tr > <td>Size</td><td>  <input type=\"text\" name=\"7\" class=\"btn\"></td></tr>\n");
      out.write("            <tr > <td>camera   </td><td>  <input type=\"text\" name=\"t8\" class=\"btn\" ></td></tr>\n");
      out.write("            <tr > <td>Weight        </td><td>  <input type=\"text\" name=\"t9\"  class=\"btn\"></td></tr>\n");
      out.write("            \n");
      out.write("            <tr > <td>Battery        </td><td>  <input type=\"text\" name=\"t10\"  class=\"btn\"></td></tr>\n");
      out.write("            <tr > <td>Warranty       </td><td>  <input type=\"text\" name=\"t11\"  class=\"btn\"></td></tr>\n");
      out.write("            <tr > <td>                  </td><td> <input type=\"submit\" value=\"Add for sale!!\" class=\"btn\"></td></tr>\n");
      out.write("\n");
      out.write("            \n");
      out.write("            </table>\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            </form>\n");
      out.write("        \n");
      out.write("    </center>\n");
      out.write("        \n");
      out.write("    <h5>*These information your customer will see !!! <br> Make Sure All information is correct!!</h5>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        ");

        try
                          {                    
        String brand,model,price,sim,os,processor,size,camera,weight,battery,warranty;
        brand=request.getParameter("t1");
        model =request.getParameter("t2");
        price=request.getParameter("t3");
        sim =request.getParameter("t4");
        os=request.getParameter("t5");
        processor=request.getParameter("t6");
        size=request.getParameter("t7");
        camera=request.getParameter("t8");
        weight=request.getParameter("t9");
        
        battery=request.getParameter("t10");
        warranty=request.getParameter("t11");
        String s;
        int j=0;
       
      if(brand!=null && warranty!=null)
                       {
                       
            s="insert into mobile values('"+brand+"','"+ model +"','"+price+"','"+ sim +"','"+ os +"','"+ processor +"','"+ size +"','"+ camera+"','"+ weight+"', '"+battery+"','"+warranty+"','"+j+"')";
        Class.forName("com.mysql.jdbc.Driver");
        Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from mobile");
        while(rs.next())
        {
            j=j+1;
        }
            
            if (i>0)
                           {
            
            
            
        out.println("Successfully  registered!!");
       
               }
               }
               }
        catch(Exception e)
                               {
            out.println(e);
        }
   
        
        
      out.write("\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("      <form method=\"post\" action=\"admin_profile.jsp\">\n");
      out.write("            <input type=\"submit\" value=\"Go to Profile\" class=\"btn\">\n");
      out.write("        </form>  \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
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
