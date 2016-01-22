<%-- 
    Document   : laptop
    Created on : May 31, 2014, 11:53:19 PM
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
        <title>Laptop</title>
        <style>
            .div1{
                
                width:700px;
                border:2px solid #00ffcc;
                margin-left: 60px;
                
            }
            
            .tbl
            {
                border:1px solid white;
                width:80%;
                font-size: 15px;
                color:black;
                background-position: right;
                
                
            }
          
            #form1
            {
                background-image: url("Images/sony1.jpeg");
                background-repeat: no-repeat;
                background-color: white;
                
                
            }
            
         
            
            
            
        </style>
        
        
         <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    var y=document.forms["myForm"]["t2"].value;
     var z=document.forms["myForm"]["t3"].value;
    
     var b=document.forms["myForm"]["t5"].value;
     var c=document.forms["myForm"]["t6"].value;
     var d=document.forms["myForm"]["t7"].value;
     var e=document.forms["myForm"]["t8"].value;
     var f=document.forms["myForm"]["t9"].value;
     var g=document.forms["myForm"]["t10"].value;
    
     
     
    if (x==null || x=="") {
        alert("Required Field Must Enter Brand Name ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  Specification");
        return false;
    }
    if (z==null || z=="") {
        alert("Required Field Must Enter price in rupee ");
        return false;
    }
    
    if (b==null || b=="") {
        alert("Required Field Must Enter Clock Speed ");
        return false;
    }
    if (c==null || c=="") {
        alert("Required Field Must Enter Ram Frequency ");
        return false;
    }
    if (d==null || d=="") {
        alert("Required Field Must Enter  HDD Capacty");
        return false;
    }
    if (e==null || e=="") {
        alert("Required Field Must Enter  System Arcticture i,e 64bit or 32 bit");
        return false;
    }
     if (f==null || f=="") {
        alert("Required Field Must Enter  Battery Backup");
        return false;
    }
     if (g==null || g=="") {
        alert("Required Field Must Enter  Warranty Period");
        return false;
    }
     
}



</script>     
   
        
    </head>
    <body>
    
        
  
        
        
        <%@include file="connect.jsp" %> 
<%
 try
        { 
        HttpSession se=request.getSession();    
        String brand,specfication,price,clock,ram ,hdd,system,battery,warranty;
        brand=request.getParameter("t1");
        specfication=request.getParameter("t2");
        price=request.getParameter("t3");
        //image =request.getParameter("t4");
        clock=request.getParameter("t5");
        ram=request.getParameter("t6");
        hdd=request.getParameter("t7");
        system=request.getParameter("t8");
        battery=request.getParameter("t9");
        warranty=request.getParameter("t10");
        String uploadedby=(String)se.getAttribute("admin_id");
        out.println(uploadedby);
        String s;
        int count_id=0;
       
      if(brand!=null && warranty!=null)
        {   
           Statement stcount=con.createStatement();
           ResultSet result_count=stcount.executeQuery("select count(*) from laptop");
           if(result_count.next())
           {
               count_id=Integer.parseInt(result_count.getString(1));
           }
        s="insert into laptop values('"+brand+"','"+specfication+"','"+price+"','"+clock+"','"+ram+"','"+hdd+"','"+
                system+"','"+battery+"','"+warranty+"','"+"Laptop_"+count_id+"','"+uploadedby+"')";
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        if (i>0)
            {
            out.println("Successfully  registered!!");
          }
       }
     }
        catch(Exception e)
                               {
            out.println(e);
        }
   
        
        %>
        
        <h3 >Enter details of your laptop product!!</h3>
    <center>
        <form action="laptop.jsp" method="post" onsubmit="return validateForm();" name="myForm" >
            <table class="tbl" id="form1">
            <tr>  <td>Brand             </td><td> <input type="text" name="t1"  class="btn"></td></tr>
            <tr > <td>Specification     </td><td><input type="text" name="t2" class="btn" >Example (4th gen/Ci5/4GB/win8)</td></tr> 
            <tr > <td>Price             </td><td>  <input type="text" name="t3" class="btn">Rs/-  </td></tr>
            <tr > <td>Clock Speed       </td><td> <input type="text" name="t5" class="btn">Ghz</td></tr>
            <tr > <td>Ram Frequency     </td><td> <input type="text" name="t6" class="btn"></td></tr>
            <tr > <td>HDD Capacity      </td><td>  <input type="text" name="t7" class="btn"></td></tr>
            <tr > <td>System Architecture</td><td>  <input type="text" name="t8" class="btn"></td></tr>
            <tr > <td>Battery Backup    </td><td>  <input type="text" name="t9" class="btn" ></td></tr>
            <tr > <td>Warranty          </td><td>  <input type="text" name="t10"  class="btn"></td></tr>
            <tr > <td>                  </td><td> <input type="submit" value="Add for sale!!" class="btn"></td></tr>
            </table>
        </form> 
    </center>
      <h5>These information will be displayed to customers!!! <br>Make Sure All information are correct!!</h5>  
        
      <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile" class="btn">
        </form>  
        
        
        
        
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
