<%-- 
    Document   : user_update
    Created on : May 31, 2014, 8:32:09 PM
    Author     : prabhunath
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
       <style>
            .tbl
            {
                border:1px solid black;
                width:100%;
                color:black;
                background-position: right; 
            }
            
           
        </style>     
        
    </head>
    <body>
    <center>
        <table width="100%">
            <tr style='background-color:black;color:white;'>
                 <td>S.No.       </td>  
                 <td>Product Name</td>
                 <td>Mode        </td>
                 <td>Status        </td>
                  <td>Feed Back </td>   
                    </td>
            </tr>
            
      
        <%
    try
       {
            HttpSession se=request.getSession();          
            String email=(String)se.getAttribute("user_email"); 
            PreparedStatement pst=con.prepareStatement("select name ,item,deliver,feedback ,item_id from purchase where email='"+email+"'");
            ResultSet rs=pst.executeQuery();
            String status;
            int count=0;
          
            if(email!=null)
            {
            while(rs.next())
            {
                    count++;
                status=rs.getString(3);
                if(status.equals("delivered"))
                {
                    out.println("<tr><td>"+(count)+". </td><td>'"+rs.getString(2)+"'<td>   (By CASH)!! </td><td style='color:green;'>DELIVERED</td> ");
                    if(rs.getString(4)==null)
                    {
                            out.print( "<td>'"+"No Feedback");
                                    %>
                                    
                                    
                                    <form action='feedback.jsp' method='POST'>
                                        <input disabled type='text' name='productid' value=" <% out.print(rs.getString(5)); %> ">
                                 <input type='submit' value='Submit Feedback!'>
                                    </form>
                                    <%
                                   out.println("</td>");
                    }
                    else
                    {
                        out.println("<td>'"+rs.getString(4)+"'</td>");
                    }
                            out.print( "</tr>");
                }
                else if(status.equals("not delivered"))
                {
                    out.println("<tr><td>"+(count)+". </td><td>'"+rs.getString(2)+"'<td>   (By CASH)!! </td><td style='color:red;'> NOT DELIVERED</td> <td></td></tr>");
                }
            }
            }
            
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
            
            
            %>
        </table>
        </center>           
            
        
            
        
        
    
    
     
    </body>
</html>
