
<%@include file="header.jsp" %>
<%@page import="javax.servlet.annotation.WebServlet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page import="javax.servlet.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Register</title>
      <script>  
  function isEmpty(){  
     var data=document.getElementById("name").value;  
     if(data.length==0){  
       alert("Name is required");  
       return false;  
     }  
     return true;  
  }
  
  
  
  
  
  function checkEmail() {

    var email = document.getElementById('txtEmail');
    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

    if (!filter.test(email.value)) {
    alert('Please provide a valid email address');
    email.focus;
    return false;
 }
}
</script>  
    </head>
    <body>
    <center> <h3 style="margin-top:40px;">User Registration Form</h3></center><hr style="width:400px;">
    <center> 
        <form method="post" action="user_register.jsp"    >
            <table style="border:0px solid white;border-radius:12px;background-color: grey;margin-top: 30px; ">
            <tr><td> Name  </td><td> <input type="text" name="t1" class="btn"  ></td></tr>
            <tr><td>Email</td><td><input type="text" name="t2" class="btn" id='txtEmail'></td></tr>
            <tr><td>Password</td><td><input type="password" name="t3" class="btn"></td></tr>
            <tr><td>Mobile Number</td><td><input type="text" name="t4" class="btn"></td></tr>
            <tr><td>Address</td><td> <textarea row="42" col="30" type="text" name="t5" class="btn"></textarea></td></tr>
           <tr><td></td><td> <input type="submit" value="Register" class="btn"       onclick="Javascript:checkEmail();"></td></tr>
            </table>
        </form>
        <hr style="width:400px;">
    </center>
        <%@include file="connect.jsp" %> 
        <%
        try
          {                    
            String name,email,password,mobile,address;
            name=request.getParameter("t1");
            email=request.getParameter("t2");
            password=request.getParameter("t3");
            mobile=request.getParameter("t4");
            address=request.getParameter("t5");
            String s;
            if(name!=null)
                {  
                    s="insert into usertbl values('"+name+"','"+email+"','"+password+"','"+mobile+"','"+address+"')";
                    Statement stmt=con.createStatement();
                    ResultSet check= stmt.executeQuery("select * from usertbl where email='"+email+"'");
                    if(check.next())
                    {
                        out.println("Already registered!!");
                    }
                    else
                    {
                    PreparedStatement pst=con.prepareStatement(s);
                    int i=pst.executeUpdate();
                    Statement st=con.createStatement();
                    ResultSet rs=st.executeQuery("select *from usertbl");
                    out.println("Successfully  registered!!");
                    }
                }
            }
        catch(Exception e)
              {
            out.println(e);
        }
        
        
        
        
        
        
        %>
        
    
    <div style="margin-top: 200px;">
     <%@include file="footer.jsp" %>
        </div>
</body>
</html>


