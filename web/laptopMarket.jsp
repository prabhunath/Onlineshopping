<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%><%-- 
    Document   : laptopMarket
    Created on : Jun 1, 2014, 2:06:10 AM
    Author     : prabhunath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>laptop Market</title>
        
        <style>
            .div1{
                
                width:700px;
                border:2px solid #00ffcc;
                margin-left: 60px;
                
            }
            .heading
            {
                border:3px solid #00cc99;
                width:700px;
                height:50px;
                background-image: url("Images/banner.jpg");
                background-repeat: no-repeat;
                color:#ff3333;
                border-radius:50px 50px 50px 50px;
                
            }
            .tbl
            {
                border:4px solid #66ff00;
                
                border-radius:34px 0px 34px 0px;
                width:999px;
                height:260px;
                font-size: x-large;
                color:#ff3333;
                background-position: right;
                
                
            }
            
             .tbll
            {
                border:4px solid #66ff00;
                
                border-radius:34px 0px 34px 0px;
                width:700px;
                font-size: x-large;
                color:#ff3333;
                background-position: right;
                
                
            }
            
            
           
            #form1
            {
                background-image: url("Images/A21.jpg");
                background-repeat: no-repeat;
                background-color: white;
                
                
            }
            
            body{
                
              
                background-repeat: round;
                width:98%;
                height:600px;
            }
            
                #d1
            {
                background-image: url("Images/A21.jpg");
                height:180px;
                width:340px;
                 margin-top: 40px;
                 font-size: x-large;
            }
            #d2
            {
                background-image: url("Images/shirt.jpg");
                height:160px;
                width:340px;
                
                 font-size: x-large;
            }
           
            .tbl2
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
        alert("Required Field Must Enter id Number Of Product That you want to purchase ");
        return false;
    }
    
    
}



    
</script> 
        
        
    <body>
   <h3>Welcome to Laptop Market</h3>
      
    <center> <table style="border:1px solid black;width:80%;" > <tr style="background-color:black;color:white;"> <td>Brand</td><td>  Specification</td><td> Price </td><td>Product ID</td></tr> 

    
    <%@include file="connect.jsp" %> 
<%
   try
   {
        HttpSession se=request.getSession();
        PreparedStatement  pst =con.prepareStatement("select brand ,specification,price,id from laptop");
        ResultSet rs=pst.executeQuery();
        int k,l=0;
        String user_email=(String)se.getAttribute("user_email");
        se.setAttribute("user_email", user_email);
        out.println("Hello:"+user_email);
        String idno;
        idno=request.getParameter("t1");
        while(rs.next())
                       {
                           
                           out.println("<tr>");
            for( k=1;k<=4;k++)
                               {
                                   String price=rs.getString(3);
                                       se.setAttribute("price", price);
                                   
                out.println("<td>"+rs.getString(k)+"</td>");

            }   
        }   
        se.setAttribute("product_id", idno);
        if(idno!=null)
        {
            response.sendRedirect("view2.jsp");
        }    
            }
            catch(Exception e)
            {
                out.println(e);
            }
        %>
        
                </table></center>
        
        <form action ="laptopMarket.jsp" method="post" onsubmit="return validateForm()" name="myForm"> 
            
            <table>
                <tr>
                    <td><h1 >   Enter Product ID: <input type="text" name="t1"></h1></td><td>
                        <input type="submit" value="Purchase" class="btn"></td></tr>
            </table>
        </form>
        
        
        
        
        
        
        
        <center>
            <table style="border:1px solid black;">
                <tr><td>
        <form method="post" action="clothsMarket.jsp">
            
            <input type = "Submit" value="Go To Cloths market" >
        </form></td><td>
        <form method="post" action="mobileMarket.jsp">
        
            <input type = "Submit" value="Go To Mobile Market" >
        </form></td>
                </tr>
            </table>
        </center>
        
       
    </body>
    <%@include file="footer.jsp" %>
</html>
