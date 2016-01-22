
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Change Password</title>
        <style>
            
            .tbl
            {
                border:1px solid black;
                width:100%;
                height:100px;
                font-size:30px;
                color:black;
                background-position: right;
                
                
            }
            
             .tbll
            {
                border:4px solid white;;
                width:100%;
                font-size: 20px;
                background-position: right;
                
                
            }
        body{
               
                background-repeat: round;
                width:98%;
                height:600px;
            }
        
        </style>    
        
    </head>
    <body>
   
        
        <%@include file="connect.jsp" %> 
        <%
        try
                               {
        String newpswd;                     
        HttpSession se=request.getSession();
        //Class.forName("com.mysql.jdbc.Driver");
         
      
        newpswd =request.getParameter("t1");
       // Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
       
        String email =(String)session.getAttribute("id");
       out.println("Welcome:"+email);
        
        if(newpswd!=null)
                               {
        PreparedStatement pst=con.prepareStatement("update usertbl set password='"+newpswd+"' where email='"+ email +"'");
        int i=pst.executeUpdate();
        if(i>0)
                       {
            out.println("Password has been updated");
            response.sendRedirect("user_profile.jsp");
        }
        }
        
      
       
       
         
        
        
        
        
        
        
        }
        catch(Exception e)
                               {
            out.println(e);
        }
        %>
        
         <center>  <h1 class="heading">Enter your New Password</h1></center>
    <center>    
    <form method="post" action="user_changePassword.jsp">
            
        <table class="tbl">
           <tr><td>Enter New Password </td><td><input type="password" name="t1" class="btn"></td></tr>
           <tr><td></td><td><input type="Submit" value="Change Password" class="btn"></td></tr>
           </table>
           
            
        </form>
    </center> 
        
    </body>
    <%@include file="footer.jsp" %>
</html>
