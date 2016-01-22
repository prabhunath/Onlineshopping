<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Purchase</title>
        <style>
            
            .tbl
            {
                border:1px solid black;
                width:100%;
                height:100px;
                font-size:20px;
                color:black;
                background-position: right;
                
                
            } 
        </style>        
        
    <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
     var z=document.forms["myForm"]["t3"].value;
     var a=document.forms["myForm"]["t4"].value;
     var b=document.forms["myForm"]["t5"].value;
     var c=document.forms["myForm"]["t6"].value;
     var d=document.forms["myForm"]["t7"].value;
     
     
     
     
    if (x==null || x=="") {
        alert("Required Field Must Enter  Name ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  Email");
        return false;
    }
    if (z==null || z=="") {
        alert("Required Field Must Enter  Mobile Number");
        return false;
    }
    if (a==null || a=="") {
        alert("Required Field Must Enter  State");
        return false;
    }
    if (b==null || b=="") {
        alert("Required Field Must Enter  city");
        return false;
    }
    if (c==null || c=="") {
        alert("Required Field Must Enter  pin number");
        return false;
    }
    if (d==null || d=="") {
        alert("Required Field Must Enter  Address");
        return false;
    }
    
}



</script>         
        
        
        
    </head>
    <body>
     <h3>Enter your details for delivery:</h3>
    
    
    <%@include file="connect.jsp" %> 
        <%
        try
                              {
                                  int x=0; 
        String name ,email,mobile,state,city,pin ,address,item;
        name=request.getParameter("t1");
        email=request.getParameter("t2");
        mobile=request.getParameter("t3");
        state = request.getParameter("t4");
        city=request.getParameter("t5");
        pin=request.getParameter("t6");
        address=request.getParameter("t7");
        //item=request.getParameter("t8");
        
        
        HttpSession se=request.getSession();
            String brand =(String)se.getAttribute("brandd"); 
            se.setAttribute("id", brand);
        
        
        
        
        
        //HttpSession se=request.getSession();
        String s;
        String status="not delivered";
        s="insert into purchase values('"+name+"','"+email+"','"+mobile+"','"+state+"','"+city+"','"+pin+"','"+address+"','"+brand+"','"+ status+"')";
        //Class.forName("com.mysql.jdbc.Driver");
         //String name=(String)se.getAttribute("id");
         if(name!=null)
                         {
        //Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        if(i>0)
                       {
       Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from purchase");
        
       while(rs.next())
                       {
          
          x=1;
        }
        
               }
        
        
        if(x==1)
        {
           // response.sendRedirect("purchase.jsp");
            out.println("Item Has Been Confirmed Thank You For Shopping With Us!!");
        }
        
        
               }
         
         
         out.println("You have Selected "+ brand);
         
         
         %>
         
    
    <center>
        <form method="post" action="purchase2.jsp" onsubmit="return validateForm();" name="myForm">
            
            <table class="tbl" id="form1"> 
                
                <tr>  <td> Name</td><td><input type="text" name="t1" class="btn"></td></tr>
            <tr>  <td>Email</td><td><input type="text" name="t2" class="btn"></td></tr> 
           <tr>  <td> Mobile</td><td><input type="text" name="t3" class="btn"></td></tr>
            
            
            <tr>  <td>State</td><td><input type="text" name="t4" class="btn"></td></tr>
            
           <tr>  <td> City</td><td><input type="text" name="t5" class="btn"></td></tr>
            <tr>  <td>PIN</td><td><input type="text" name="t6" class="btn"></td></tr>
            <tr>  <td>Address</td><td><textarea  name="t7" class="btn" rows="4" cols="50" ></textarea></td></tr>
            <tr>  <td>Item To Be purchase</td><td> <input type="text" name="t8" value= "<%out.println(brand); %>"    class="btn" disabled></td></tr>
            <tr>  <td>   </td><td>  <input type="submit" value="Confirm Material" class="btn"></td></tr>
            
            
            
            </table> 
            
            
        </form>
    </center>
    
        
        <form action="clothsMarket.jsp" method="post">
            <input type="submit" value="Go To Cloths Market" >
            
        </form>
            <form action="laptopMarket.jsp" method="post">
            <input type="submit" value="Go To Laptop Market" >
            
        </form>
            <form action="mobileMarket.jsp" method="post">
            <input type="submit" value="Go To Mobile Market" >
            
        </form>
        <%
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        %>
            
        
            
            
    </body>
    <%@include  file="footer.jsp" %>
</html>
