<%-- 
    Document   : clothsMarket
    Created on : Jun 1, 2014, 2:08:36 AM
    Author     : prabhunath
--%>


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Cloths Market</title>
    
    <style>
            .div1{
                
                width:700px;
                border:2px solid #00ffcc;
                margin-left: 60px;
                
            }
          
            .tbl2
            {
                border:1px solid black;
                
                
                width:100%;
                font-size:20;
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
        
        
    </head>
    <body>
    <h3>Welcome to Cloths Market</h3>
        
        
        <center> <table class="tbl2" > <tr> <td>Brand</td><td>  Price </td><td> For Person</td><td> Type</td><td> ID</td> </tr> 
   <%@include file="connect.jsp" %> 
         <%
        try
        {
        PreparedStatement  pst =con.prepareStatement("select brand,price,forperson,type,id from cloths");
        ResultSet rs=pst.executeQuery();
        HttpSession se=request.getSession();
        String user_email=(String)se.getAttribute("user_email");
        out.println("Welcome:"+user_email+"<br>");
        se.setAttribute("user_email",user_email);
        int k=1;
        String idno;
        idno=request.getParameter("t1");       
        while(rs.next())
                       {
                           out.println("<tr>");
            for(k=1;k<=5;k++)
                               {
                                   
                
                                       String price=rs.getString(2);
                                       se.setAttribute("price", price);
                                        out.println("<td>"+rs.getString(k)+"</td>");
            }
           
            
            
        }
         se.setAttribute("id", idno);
        if(idno!=null)
        {
            
            
            response.sendRedirect("view3.jsp");
        }
        }
        catch(Exception e)
        {
            out.println(e);
        }
        
        
        %>
        
       </table> </center>
        
        
        
        <form action ="clothsMarket.jsp" method="post" onsubmit="return validateForm()" name="myForm" > 
            
            <table>
                <tr>
                    <td><h1 >   Enter Id Number Of Product to Purchase <input type="text" name="t1"></h1></td><td>
                        <input type="submit" value="Purchase" ></td></tr>
            </table>
        </form>
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        
        <center>
        <table style="border:1px solid black;" >
            <tr><td>
        <form method="post" action="laptopMarket.jsp">
        
            <input type = "Submit" value="Go To Laptop market" >
        </form></td><td>
        <form method="post" action="mobileMarket.jsp">
        
            <input type = "Submit" value="Go To Mobile Market">
        </form></td></tr>
        </table>
        </center>
    </body>
    <%@include file="footer.jsp" %>
</html>
