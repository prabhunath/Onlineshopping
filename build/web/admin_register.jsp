<%-- 
    Document   : admin_register
    Created on : May 31, 2014, 10:46:32 PM
    Author     : prabhunath
--%>
<%@include file="header.jsp" %>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Register</title>
<script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
    var a=document.forms["myForm"]["t3"].value;
    var b=document.forms["myForm"]["t4"].value;
    var c=document.forms["myForm"]["t5"].value;
    var d=document.forms["myForm"]["t6"].value;
    var e=document.forms["myForm"]["t7"].value; 
    if (x==null || x=="") {
        alert("Required Field Must Enter Name");
        return false;
    }   
    if (y==null || y=="") {
        alert("Required Field Must Enter  Email");
        return false;
    }  
    if (a==null || a=="") {
        alert("Required Field Must Enter  PASSWORD");
        return false;
    }
    if (b==null || b=="") {
        alert("Required Field Must Enter  Mobile Number");
        return false;
    }
    if (c==null || c=="") {
        alert("Required Field Must Enter  Address");
        return false;
    }
    if (d==null || d=="") {
        alert("Required Field Must Enter  Company Name");
        return false;
    }  
}
</script>        
    </head>
    <body>   
    <center> <h3 style="margin-top:50px;">Admin Registration Form</h3></center>
        <hr>
    <center>  
        <form method="get" action="admin_register.jsp"  enctype="multipart/form-data" onsubmit="return validateForm();" name="myForm">  
            <table style="border:0px solid white;border-radius:12px;background-color: grey;margin-top: 10px; width:30%;">
                   <tr><td>Name         </td><td>    <input type="text" name="t1"></td></tr>
                   <tr><td>Email        </td><td>   <input type="text" name="t2"></td></tr> 
                   <tr><td>Password     </td><td>   <input type="password" name="t3"></td></tr> 
                   <tr><td>Mobile Number</td><td>   <input type="text" name="t4"></td></tr> 
                   <tr><td>Address      </td><td>   <textarea rows="5" col="15" type="text" name="t5"></textarea></td></tr>
                   <tr><td>Company      </td><td>   <input type="text" name="t6"></td></tr> 
                   <tr><td>Product to sale : </td>
                    <td>  Mobile  
                        <input type="checkbox" value="Mobile" name="t7" /> Laptop
                        <input type="checkbox" value="Laptop" name="t7" /> Cloths         
                     <input type="checkbox" value="Cloths" name="t7" />
                     </td>
                    </tr>
                    <tr>
                        <td> </td>
                        <td>
                            <input type="submit" value="Register" />
                        </td>
                    </tr> 
            </table> 
        </form>
        <hr style="width:500px;">
    </center>
    <%@include file="connect.jsp" %> 
      <%  
        
try
  {                    
        String name,email,password,mobile,address,company,product;
        name=request.getParameter("t1");
        email=request.getParameter("t2");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        company=request.getParameter("t6");
        product=request.getParameter("t7");
        String s;
        s="insert into admintbl values('"+name+"','"+email+"','"+password+"','"+mobile+"','"+address+"','"+company+"','"+product+"')";
        if(name!=null && email!=null)
        { 
            PreparedStatement pst=con.prepareStatement(s);
            Statement stmt=con.createStatement();
            ResultSet check= stmt.executeQuery("select * from admintbl where email='"+email+"'");
            if(check.next())
               {
                 out.println("Already registered!!");
               }
            else
               {
                int i=pst.executeUpdate();
                Statement st=con.createStatement();
                ResultSet rs=st.executeQuery("select *from admintbl");
                out.println("Successfully  registered!!");
               }
        }
   }
   catch(Exception e)
      {
         out.println(e);
   }
        
        %>
        
        <div style="margin-top: 160px;">
     <%@include file="footer.jsp" %>
     </div>
    </body>
</html>
