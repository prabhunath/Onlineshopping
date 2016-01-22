<%-- 
    Document   : admin_update
    Created on : May 31, 2014, 8:33:45 PM
    Author     : prabhunath
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Update</title>
        
        
        
        <style>
            .div1{
                
                
                border:1px solid black;
               
                display: inline-block;
            }
           
            .tbl
            {
                border:1px solid black;

                width:100%;
                font-size:20px;
                color:black;
               
                
                
            }      
            
        </style>
        
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
    if (e==null || e=="") {
        alert("Required Field Must Select product to sale!!");
        return false;
    }
    
}



</script>   
      
        
    </head>
    <body>
<h3>Update Profile</h3>
       <%@include file="connect.jsp" %>  
        <%
        try
                          {                    
        String name,password,mobile,address,company,product;
        name=request.getParameter("t1");
        //email=request.getParameter("t2");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        company=request.getParameter("t6");
        product=request.getParameter("t7");
        HttpSession se=request.getSession();
        String email= (String)se.getAttribute("id");
        out.println(email);
        String s;
        if(name!=null)
           {
        s="update admintbl set email='"+email+"' , password='"+password+"', mobile='"+mobile+"', address='"+address+
                "',company= '"+company+"',product='"+product+"' where name='"+name+"'";
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select *from admintbl");
        if(name!=null)
                       {
                 out.println("Name &nbsp Email &nbsp Password  <br>");
                    while(rs.next())
                               {
                                out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"<br>");
                            }
                    out.println("<br> <br> Updated    ");
         }
       }
    }
        catch(Exception e)
            {
            out.println(e);
        }
        
        
        
        
        
        
        %>
        <center>
        <form method="post" action="admin_update.jsp" onsubmit="return validateForm();" name="myForm" >
            
            <table class="tbl" id="form1">
            
            <tr>  <td>Name              </td><td><input type="text" name="t1"   ></td></tr>
            <tr>  <td>Password          </td><td> <input type="password" name="t3"   ></td></tr>
            <tr>  <td>Mobile Number      </td><td> <input type="text" name="t4"   ></td></tr>
           <tr>  <td>Address                </td><td><input type="text" name="t5"  ></td></tr>
           <tr>  <td>Company                </td><td><input type="text" name="t6"   ></td></tr>
           <tr>  
               <td>
                   Product to sale :
               </td>
               <td>
                    Mobile <input type="checkbox" value="Mobile" name="t7" > 
                    Laptop<input type="checkbox" value="Laptop" name="t7" >             
                    Cloths<input type="checkbox" value="Cloths" name="t7">
                </td>
           </tr>
            
            <tr><td></td><td> <input type="submit" value="Update" class="btn"></td></tr>
            </table>
        </form>
    </center>
    
    
    
        <center>
        <div class="div1">
            <div class="div1">
        <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile">
        </form>
                
            </div>
                
            <div class="div1">    
        <form method="post" action="admin_itemPurchaseOrder.jsp">
            <input type="submit" value="ItemPurchaseOrder" >
        </form>
                
            </div>
                
            <div class="div1">   
        <form method="post" action="admin_itemSale.jsp">
            <input type="submit" value="Product to sale">
        </form>
                
            </div>
                
        </div>
        </center>
    </body>
    <%@include file="footer.jsp" %>
</html>
