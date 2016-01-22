package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/allproducts.jsp");
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Online Shopzyada</title>\n");
      out.write("    </head>\n");
      out.write("    ");
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
      out.write("    <body>\n");
      out.write("    <h3 style=\"color:grey;width:200px;height:10px;text-align: left;\">New Arrivals: <hr></h3> \n");
      out.write("   \n");
      out.write("    <center>\n");
      out.write("            <table style='border:2px solid white;width:100%; margin-top:40px; height:400px;'>\n");
      out.write("                <tr style=\"width:100%;\">  \n");
      out.write("                    <td style=\"background-image: url('Images/banner.jpg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                    <td style=\"width:0.1px;height:100px;border:1px solid grey;background-color: black;\"></td>\n");
      out.write("                    <td style=\"background-image: url('Images/cam1.jpg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("    </center> \n");
      out.write("     <h3 style=\"color:grey;width:200px;height:10px;text-align: left;\">Today's Offer Sales: <hr></h3> \n");
      out.write("     \n");
      out.write("    <center>\n");
      out.write("     \n");
      out.write("            <table style='border:2px solid white;width:100%; margin-top:40px; height:300px;'>\n");
      out.write("               \n");
      out.write("                <tr style=\"width:100%;\">\n");
      out.write("                    \n");
      out.write("                    <td style=\"background-image: url('Images/A21.jpg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                    <td style=\"width:0.1px;height:150px;border:1px solid grey;background-color: black;\"></td>\n");
      out.write("                     <td style=\"background-image: url('Images/Home.jpg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                      <td style=\"width:0.1px;height:150px;border:1px solid grey;background-color: black;\"></td>\n");
      out.write("                     <td style=\"background-image: url('Images/black.jpg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                      <td style=\"width:0.1px;height:150px;border:1px solid grey;background-color: black;\"></td>\n");
      out.write("                     <td style=\"background-image: url('Images/same2.jpeg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                     <td style=\"width:0.1px;height:150px;border:1px solid grey;background-color: black;\"></td>\n");
      out.write("                     <td style=\"background-image: url('Images/kurti.jpg');background-repeat: no-repeat;border:0px solid white;\"></td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </center> \n");
      out.write("     ");
      out.write('\n');
      out.write('\n');
      out.write('\n');
      out.write('\n');

   
    Class.forName("com.mysql.jdbc.Driver");
    Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
    
    
      out.write('\n');

    try
    {
        String query[]= new String[10];
        int count=0;
        query[0]="select * from mobile ";
        query[1]="select * from laptop ";
        query[2]="select * from cloths ";
        Statement st=con.createStatement();
        for(int i=0;i<3;i++)
        {
        ResultSet rs=st.executeQuery(query[i]);
        if(i==0)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Mobile Bazar:</h3><hr>");
                out.println("<center><table style='width:80%;'><tr style='background-color:black;color:white;'>"
                        + "<td> BRAND </td> <td> MODEL </td> <td> PRICE </td><td> SIM </td><td> OS </td><td>  PROCESSOR</td>"
                        + "<td>SIZE  </td><td>CAMERA  </td> <td>WEIGHT  </td><td> BATTERY </td><td>  WARRANTY </td></tr>");
                out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td>"
                        + "<td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td>"
                        + "<td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td>"
                        + "<td>"+rs.getString(9)+"</td><td> "+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td>"
                            + "<td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td>"
                            + "<td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td>"
                            + "<td> "+rs.getString(10)+"</td><td>"+rs.getString(11)+"</td></tr>");               
                }
                out.println("</table></center>");
            }
        }
        else if(i==1)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Laptop Bazar:</h3><hr>");
                out.println("<center><table style='width:80%;'><tr style='background-color:black;color:white;'><td> BRAND </td> <td> SPECIFICATION </td> <td> PRICE </td><td> CLOCK </td><td> RAM </td><td>  HDD </td><td>SYSTEM  </td><td>BATTERY  </td> <td> WARRANTY </td></tr>");
                out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td></tr>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td><td> "+rs.getString(7)+"</td><td> "+rs.getString(8)+" </td><td>"+rs.getString(9)+"</td></tr>");               
                }
                out.println("</table></center>");
            }
        }
        else if(i==2)
        {
            if(rs.next())
            {
                count++;
                out.println("<h3>Cloths Bazar:</h3><hr>");
                out.println("<center><table style='width:80%;'><tr style='background-color:black;color:white;'><td> BRAND </td><td> PRICE </td><td> FOR PERSON </td><td> TYPE </td><td>  SIZE </td><td>COLOR </td></tr>");
                out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td></tr>");
                while(rs.next())
                {
                    count++;
                    out.print("<tr style='background-color:grey;'><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+" </td><td>"+rs.getString(3)+" </td><td>"+rs.getString(4)+"</td><td> "+rs.getString(5)+"</td><td> "+rs.getString(6)+"</td></tr>");
                }
                out.println("</table></center>");
            }
        }
       
        
        
        }
        out.println("<br><h4 style='color:red;'>Total number of data found: "+count+"</h4>");
        
        
        
    }
    catch(Exception e)
    {
        e.printStackTrace();
    }
    
    
    
      out.write('\n');
      out.write("\n");
      out.write("    </body>\n");
      out.write("   ");
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
