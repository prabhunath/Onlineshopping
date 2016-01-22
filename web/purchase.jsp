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
     <h3>Delivery address details:</h3>
    
    
    <%@include file="connect.jsp" %> 
<%
  try
  {
        int x=0; 
        String name ,mobile,state,city,pin ,address,item,brand;
        name=request.getParameter("t1");
        mobile=request.getParameter("t3");
        state = request.getParameter("t4");
        city=request.getParameter("t5");
        pin=request.getParameter("t6");
        address=request.getParameter("t7");
        HttpSession se=request.getSession();
        brand=(String)se.getAttribute("brand");
        String email=(String)se.getAttribute("user_email");
        String product_id =(String)se.getAttribute("product_id"); 
        String deliveredby=(String)se.getAttribute("owner_email");
        out.println("OWNER:"+deliveredby+" &nbsp;");
        se.setAttribute("id", product_id);
        out.println("&nbsp; USER:"+email);
        String s;
        String status="not delivered";
        s="insert into purchase values('"+name+"','"+email+"','"+mobile+"','"+state+"','"+city+"','"+pin+"','"+
                address+"','"+brand+"','"+ status+"','"+"__"+"','"+product_id+"','"+"___"+"' )";
         if(name!=null)
          {
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
            out.println("Item Has Been Confirmed Thank You For Shopping With Us!!");
        }
    } 
         
         
         %>
         
        
        
    
    
    
    <center>
        <form method="post" action="purchase.jsp" onsubmit="return validateForm();" name="myForm">
            
            <table class="tbl" id="form1"> 
                
           <tr>  <td> Name</td><td><input type="text" name="t1"></td></tr>
           <tr>  <td> Mobile</td><td><input type="text" name="t3" ></td></tr>
            <tr>  <td>State</td><td><input type="text" name="t4" ></td></tr>
           <tr>  <td> City</td><td><input type="text" name="t5" ></td></tr>
            <tr>  <td>PIN</td><td><input type="text" name="t6" ></td></tr>
            <tr>  <td>Address</td><td><textarea  name="t7"  rows="4" cols="50" ></textarea></td></tr>
            <tr>  <td>Item To Be purchase</td><td> <input type="text" name="t8" value= "<%out.println(brand); %>" disabled></td></tr>
            <tr>  <td>   </td><td>  <input type="submit" value="Confirm Material" ></td></tr>
            <tr><td>BRAND: <%out.println(brand); %></td><td>Product ID:<%out.println(product_id); %></td>
            </table> 
        </form>
    </center>
    
    
        
        
        
        <form action="clothsMarket.jsp" method="post">
            <input type="submit" value="Go To Cloths Market" class="btn">
            
        </form>
            <form action="laptopMarket.jsp" method="post">
            <input type="submit" value="Go To Laptop Market" class="btn">
            
        </form>
            <form action="mobileMarket.jsp" method="post">
            <input type="submit" value="Go To Mobile Market" class="btn">
            
        </form>
        <%
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        %>
            
            
            
           <form method="post" action="index.jsp">
        
        <input type = "Submit" value="Go To Home" class="btn">
        </form> 
    </body>
     <%@include  file="footer.jsp" %>
</html>
