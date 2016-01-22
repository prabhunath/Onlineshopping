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
        <title>Mobile</title>
        <style>
            .div1{
                
                width:700px;
                border:2px solid #00ffcc;
                margin-left: 60px;
                
            }
           
            
            .tbl
            {
                border:1px solid white;
                
              
                width:700px;
                font-size: 20px;
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
     var a=document.forms["myForm"]["t4"].value;
     var b=document.forms["myForm"]["t5"].value;
     var c=document.forms["myForm"]["t6"].value;
     var d=document.forms["myForm"]["t7"].value;
     var e=document.forms["myForm"]["t8"].value;
     var f=document.forms["myForm"]["t9"].value;
     var g=document.forms["myForm"]["t10"].value;
     var h=document.forms["myForm"]["t11"].value;
     
     
    if (x==null || x=="") {
        alert("Required Field Must Enter Brand Name ");
        return false;
    }
    
    if (y==null || y=="") {
        alert("Required Field Must Enter  Model");
        return false;
    }
    if (z==null || z=="") {
        alert("Required Field Must Enter  Price");
        return false;
    }
    if (a==null || a=="") {
        alert("Required Field Must Enter  SIM Type i,e single or dual");
        return false;
    }
    if (b==null || b=="") {
        alert("Required Field Must Enter  Os Type");
        return false;
    }
    if (c==null || c=="") {
        alert("Required Field Must Enter  Processer in Ghz");
        return false;
    }
    if (d==null || d=="") {
        alert("Required Field Must Enter  Size or dimention");
        return false;
    }
    if (e==null || e=="") {
        alert("Required Field Must Enter  Camera in pixcel");
        return false;
    }
     if (f==null || f=="") {
        alert("Required Field Must Enter  Weight of your product");
        return false;
    }
     if (g==null || g=="") {
        alert("Required Field Must Enter  Battery duration on stand mode");
        return false;
    }
     if (h==null || h=="") {
        alert("Required Field Must Enter  Warranty Period");
        return false;
    }
}



</script>     
        
    </head>
    <body>
     <h3 class="heading">Enter details of your Mobile product!!</h3>
   
        
        
        <%@include file="connect.jsp" %> 
        <%
    try
        {   
        HttpSession se=request.getSession();
        String brand,model,price,sim,os,processor,size,camera,weight,battery,warranty;
        brand=request.getParameter("t1");
        model =request.getParameter("t2");
        price=request.getParameter("t3");
        sim =request.getParameter("t4");
        os=request.getParameter("t5");
        processor=request.getParameter("t6");
        size=request.getParameter("t7");
        camera=request.getParameter("t8");
        weight=request.getParameter("t9");
        battery=request.getParameter("t10");
        warranty=request.getParameter("t11");
        String s;
        String pid="Mobile_";
        Statement stt=con.createStatement();
        ResultSet rscount=stt.executeQuery("select count(*) from mobile");
        if(rscount.next())
        {
            pid+=rscount.getString(1);
        }
       String admin_id= (String)se.getAttribute("admin_id");
       
       out.println(admin_id);
      if(brand!=null && warranty!=null)
        {              
        s="insert into mobile values('"+brand+"','"+ model +"','"+price+"','"+ sim +"','"+ os +"','"+ processor +"','"+ size +
                "','"+ camera+"','"+ weight+"', '"+battery+"','"+warranty+"','"+pid+"','"+admin_id+"')";
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
        

         <center>
        <form action="mobile.jsp" method="post" onsubmit="return validateForm();" name="myForm" >
            
            
            <table class="tbl" id="form1" >
            
            
            <tr>  <td>Brand             </td><td> <input type="text" name="t1"  class="btn"></td></tr>
            <tr > <td>Model    </td><td><input type="text" name="t2" class="btn" ></td></tr> 
            <tr > <td>Price             </td><td>  <input type="text" name="t3" class="btn">Rs/-  </td></tr>
            
            <tr > <td>Sim      </td><td> <input type="text" name="t4" class="btn">Single or dual</td></tr>
            <tr > <td>Os     </td><td> <input type="text" name="t5" class="btn"></td></tr>
            <tr > <td>processor     </td><td>  <input type="text" name="t6" class="btn"></td></tr>
            <tr > <td>Size</td><td>  <input type="text" name="t7" class="btn"></td></tr>
            <tr > <td>camera   </td><td>  <input type="text" name="t8" class="btn" ></td></tr>
            <tr > <td>Weight        </td><td>  <input type="text" name="t9"  class="btn"></td></tr>
            
            <tr > <td>Battery        </td><td>  <input type="text" name="t10"  class="btn"></td></tr>
            <tr > <td>Warranty       </td><td>  <input type="text" name="t11"  class="btn"></td></tr>
            <tr > <td>                  </td><td> <input type="submit" value="Add for sale!!" class="btn"></td></tr>

            
            </table>
            
            
            
            
            
            </form>
        
    </center>
        
    <h5>*These information will be displayed to customers!!! <br> Make Sure All information are correct!!</h5>
      <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile" class="btn">
        </form>  

    </body>
    <%@include file="footer.jsp" %>
</html>
