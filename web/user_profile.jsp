<%-- 
    Document   : user_profile
    Created on : May 31, 2014, 8:31:09 PM
    Author     : prabhunath
--%>
 <%@ include file="header.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Profile</title>
        
        
       <style>
            
            .div1{
                
                
                border:2px solid #00ffcc;
                
                display: inline-block;
                height: 10px;
                border-radius:20px 20px 20px 20px;
            }
            
            .tbl
            {
                border:1px solid white;
                width:30%;
                font-size: 20px;
                color:black;
                background-color:grey;
                background-position: right;
                
                
            }
            
            
            .tbl1
            {
                border:4px solid #66ff00;
                
                border-radius:34px 0px 34px 0px;
                width:100%;
                font-size: 10px;
                color:#ff3333;
                background-position: right;
                
                
            }
            
            
            
            .btn
            {
               background-color: black;
                border:2px solid white;
                border-radius :12px;
                height: 25px;
                width: 200px;
                font-size: 10px;
                color:white;
            }
            
            
           
            .person
            {
             font-size: xx-large;  
             margin-left: 900px;
            }
            
            .div2
            {
                display:inline-block; 
                border:3px solid;
                font-size: x-large;
                color:#00ffcc;
               
                
            }
            
            .dd1
            {
               
                height:100px;
                width:700px;
                 margin-top: 40px;
                 border: 2px solid #00ffcc;
                 border-radius:63px 23px 0px 0px;
            }
            
            
            
            
            
            
        </style>
        
       
        
    </head>
    <body>
     <h3 class="heading">Welcome to Your Profile!</h3><hr>
     <table style="width:100%;">
        <tr><td>
        <form method="post" action="user_changePassword.jsp">
        <input type = "Submit" value="Change Password" >
        </form><hr> <hr><hr>
         </td>     
          <td>       
                
        <form method="post" action="user_update.jsp">
        <input type = "Submit" value="Update Profile">
        </form>
        <hr> <hr><hr>
           </td>     
          
            <td>
                <form method="post" action="user_login.jsp">
            <input type="submit" value="Logout">
        </form>
                <hr> <hr><hr>
                </td>
                
                <td>
                     <table>
                            <tr>
                                <td style="margin-left: 900px;">     
                            <form method="post" action="mobileMarket.jsp">

                            <input type = "Submit" value="GO TO Mobile MARKET" class="btn">
                            </form>

                            <form method="post" action="laptopMarket.jsp">

                            <input type = "Submit" value="GO TO LAPTOP MARKET" class="btn">
                            </form>

                            <form method="post" action="clothsMarket.jsp">

                            <input type = "Submit" value="GO TO CLOTHS MARKET" class="btn">
                            </form>


                                </td>

                            </tr>
                        </table>
                    </td>
                
                
            </tr>
      </table>   

     
     
    <%@include file="connect.jsp" %> 
        <%
            try
            {
        HttpSession se=request.getSession();
        String email=(String)session.getAttribute("id");
        se.setAttribute("user_email", email);
        if(email!=null )
        {
        PreparedStatement pst=con.prepareStatement("select *from usertbl where email='"+email+"'");
        se.setAttribute("id", email);        
        ResultSet rs=pst.executeQuery();
        out.println("<hr><u><p style=''>Personal Details:</p></u><table class=\"tbl\" ><tr><td>");
        
        while(rs.next())
        {
            out.println("Name</td><td> '"+rs.getString(1)+
                    "' </td> <tr><td> Email </td> <td>'"+ 
                    rs.getString(2) +"' </td>  </tr> <tr><td>Mobile</td><td>'"+
                    rs.getString(4)+"'</td></tr> <tr><td> Address</td>  <td>'"+
                    rs.getString(5)+"'</td></tr>   ");
        }
        out.println("</table> ");
        }
        
            }
            catch(Exception e)
            {
                out.println(e);
            }
        
        %>
       <hr> 
       <h2>SHIPMENT DETAILS:</h2>
   <%@ include file="user_shipment.jsp"%> 
   <hr>     
    
    
    
   <div style="margin-top: 150px;">
     <%@ include file="footer.jsp"%>
     
     </div>
    </body>
</html>
