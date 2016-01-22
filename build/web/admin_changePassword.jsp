<%-- 
    Document   : admin_changePassword
    Created on : May 31, 2014, 8:33:28 PM
    Author     : prabhunath
--%>
<%@page import="java.sql.* " %>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
                font-size: 20px;
                color:black;
                background-position: right;
                
                
            }  
         
        </style>
        
           <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    
    
    if (x==null || x=="") {
        alert("Required Field Must Enter New password ");
        return false;
    }
    
    
}



</script>  
        
    </head>
    <body>
    <center><h1 class="heading">Change Password</h1></center>
    <center>
        <form method="post" action="user_changePassword.jsp" onsubmit="return validateForm();" name="myForm">
            <table class="tbl" id="form1">
            <tr>  <td>
          Enter New Password</td><td><input type="password" name="t1" class="btn"></td></tr>
          <tr>  <td> </td><td><input type="Submit" value="Change Password" class="btn"></td></tr>
            </table>
        </form>
        </center>
        <%@include file="connect.jsp" %>
    
        <%
        try
    {
          String oldpswd,newpswd;                     
          newpswd =request.getParameter("t1");
          String name=(String)session.getAttribute("id");
        if(newpswd!=null)
                               {
        PreparedStatement pst=con.prepareStatement("update usertbl set password='"+newpswd+"' where email='"+name+"'");
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
        
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
