<%-- 
    Document   : admin_login
    Created on : May 31, 2014, 8:32:53 PM
    Author     : prabhunath
--%>
<%@include file="header.jsp" %>
<%@page import="java.sql.* " %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>            
        <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
    
    if (x==null || x=="") {
        alert("Required Field Must Enter Email id ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  PASSWORD");
        return false;
    }
}



</script>    
    </head>
<body>
    <center>
        <h1 class="heading">
            Admin Login
        </h1>
    </center>
<hr>
    <center>
        <form method="post" action="admin_login.jsp" onsubmit="return validateForm();" name="myForm">
            <th>
                <h2>
                    Admin Login Form
                </h2>
            <hr style="width:400px;">
            </th>
           <table style="border:0px solid white;border-radius:12px;background-color: grey;margin-top: 30px; ">
            <tr>  <td>Email</td><td> <input type="text" name="t1" class="btn"><br></td></tr>
            <tr>  <td>Password</td><td><input type="password" name="t2" class="btn"><br></td></tr>
            <tr>  <td></td><td><input type="Submit" value="Login" class="btn"></td></tr>
           </table>
        </form>
        <hr style="width:400px;">
        </center>     
           <%@include file="connect.jsp" %>  
<%
try
    {
       String email,password;                     
       email=request.getParameter("t1");
       password =request.getParameter("t2");
       PreparedStatement pst=con.prepareStatement("select email,password from admintbl where email=? and password=?");
       pst.setString(1, email);
       pst.setString(2,password);
       HttpSession se=request.getSession();
       ResultSet rs=pst.executeQuery();
       if( email!=null && password!=null )
          { 
            while(rs.next())
                  {     
                 se.setAttribute("id", rs.getString(1));
                 response.sendRedirect("admin_profile.jsp");
            }
           }
        }
        catch(Exception e)
         {
            out.println(e);
        }
        %>   
    <div style="position:fixed;width:100%; margin-top: 220px;">
     <%@include file="footer.jsp" %>
    </div>
</body>
</html>