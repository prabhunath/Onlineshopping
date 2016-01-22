package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.*;

public final class view3_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>view</title>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("          \n");
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
      out.write("                height:50px;\n");
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
      out.write("                width:999px;\n");
      out.write("                height:200px;\n");
      out.write("                font-size: x-large;\n");
      out.write("                color:#ff3333;\n");
      out.write("                background-position: right;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("             .tbll\n");
      out.write("            {\n");
      out.write("                border:4px solid #66ff00;\n");
      out.write("                \n");
      out.write("               \n");
      out.write("                width:999px;\n");
      out.write("                font-size: x-large;\n");
      out.write("                color:#000000;\n");
      out.write("                background-position: right;\n");
      out.write("                \n");
      out.write("                \n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
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
      out.write("            body{\n");
      out.write("                background-color: #00cc99;\n");
      out.write("                background-image: url(\"Images/web7.jpg\");\n");
      out.write("              \n");
      out.write("                background-repeat: round;\n");
      out.write("                width:98%;\n");
      out.write("                height:600px;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("                #d1\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/sony1.jpeg\");\n");
      out.write("                height:180px;\n");
      out.write("                width:340px;\n");
      out.write("                 margin-top: 40px;\n");
      out.write("                 font-size: x-large;\n");
      out.write("            }\n");
      out.write("            #d2\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/shirt.jpg\");\n");
      out.write("                height:160px;\n");
      out.write("                width:340px;\n");
      out.write("                \n");
      out.write("                 font-size: x-large;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("            .tbl2\n");
      out.write("            {\n");
      out.write("                border:4px solid #66ff00;\n");
      out.write("                \n");
      out.write("                border-radius:34px 0px 34px 0px;\n");
      out.write("                width:100%;\n");
      out.write("                font-size: x-large;\n");
      out.write("                color:#ff3333;\n");
      out.write("                background-position: right;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            .dd2\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/JUMIA.jpg\");\n");
      out.write("                height:fit-content;\n");
      out.write("                width:340px;\n");
      out.write("                \n");
      out.write("                 font-size: x-large;\n");
      out.write("            }\n");
      out.write("            .dd1\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/A21.jpg\");\n");
      out.write("                height:content-box;\n");
      out.write("                width:340px;\n");
      out.write("                \n");
      out.write("                 font-size: x-large;\n");
      out.write("            }\n");
      out.write("            .dd3\n");
      out.write("            {\n");
      out.write("                background-image: url(\"Images/def.jpg\");\n");
      out.write("                height:160px;\n");
      out.write("                width:340px;\n");
      out.write("                \n");
      out.write("                 font-size: x-large;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("            \n");
      out.write("        </style>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("    <center><h1> Details Of Your Selected Materials </h1></center>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    <center>  <table class=\"tbll\"><tr><td>Brand</td><td>Price</td> <td>For Person</td><td>Type</td><td>Size </td><td>Color</td><td>Id</td><td>Image</td></tr></table></center>\n");
      out.write("    <center>    \n");
      out.write("    <table class=\"tbl\" >\n");
      out.write("        \n");
      out.write("        ");

            
            try
            {
             
               
                
            HttpSession se=request.getSession();
            String idno =(String)se.getAttribute("id");
            String money="";
            String brand2;
            Class.forName("com.mysql.jdbc.Driver");
            Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
            PreparedStatement  pst =con.prepareStatement("select * from cloths where id='"+idno+"'");
            ResultSet rs=pst.executeQuery();
            Statement st=con.createStatement();
            ResultSet rr=st.executeQuery("select * from cloths where id='"+idno+"'");
            out.println(" <tr>");
            while(rr.next())
            {
                for(int i=1;i<=8;i++)
                {
                    
                    if(i==1)
                    {
                        brand2=rr.getString(1);
                        se.setAttribute("brand2", brand2);
                    }
                    if(i==2)
                    {
                        money=rr.getString(i);
                    }
                out.println("<td>"+rr.getString(i)+"</td>");
                
                
                }
            }

            se.setAttribute("money", money);
            //out.println("Your Product id is :"+idno);
            out.println("</tr>");
            
            
           out.println("You have to Pay "+ money );
            
           String mode;
           mode=request.getParameter("x");
            
            
            if(mode!=null)
            {
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
                
            }
            
            
            
            
            
      out.write("\n");
      out.write("        \n");
      out.write("        </table>\n");
      out.write("    </center>\n");
      out.write("   <marquee behavior=\"alternate\"><center><h3 class=\"heading\">Note online facility is not available</h3></center></marquee>\n");
      out.write("            \n");
      out.write("    <form action=\"purchase.jsp\" method=\"post\">\n");
      out.write("        <table class=\"tbl\">\n");
      out.write("            <th>Select Payment Mode</th>\n");
      out.write("            <tr><td>\n");
      out.write("                    Online</td><td><input type=\"radio\" name=\"x\" value=\"online\"></td></tr>\n");
      out.write("        <tr><td>Offline</td><td><input type=\"radio\" name=\"x\" value=\"offline\"></td></tr>\n");
      out.write("         <tr><td>   </td><td>    <input type=\"submit\" value=\"DoPayment\"></td></tr>\n");
      out.write("                \n");
      out.write("        </table>     \n");
      out.write("            </form>  \n");
      out.write("        \n");
      out.write("    \n");
      out.write("    <form method=\"post\" action=\"index.jsp\">\n");
      out.write("        \n");
      out.write("        <input type = \"Submit\" value=\"Go To Home\" class=\"btn\">\n");
      out.write("        </form>\n");
      out.write("    \n");
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
