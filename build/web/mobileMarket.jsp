<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile market</title>
        
        
        <style>
          
            .tbl
            {
                border:1px solid black;
                width:100%;
                font-size: 20px;
                color:black;
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
            
            
           
           
            
           body{
              
               
                background-repeat: round;
                width:98%;
                height:600px;
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
    var x = document.forms["myForm"]["tt1"].value;
    
    
    if (x==null || x=="") {
        alert("Required Field Must Enter id Number Of Product That you want to purchase ");
        return false;
    }
    
    
}



</script> 
            
        
        
        
        
        
    </head>
    <body>
    <h3 >Welcome to Mobile Market</h3>
    
        
    <center> <table class="tbl2" > <tr style='background-color:black;color:white;'> <td>Brand</td><td> Model name </td><td> Price </td><td> id </td></tr>  
    
    <%@include file="connect.jsp" %> 
    <%
        try
        {
        PreparedStatement  pst =con.prepareStatement("select brand , model, price ,id from mobile");
        ResultSet rs=pst.executeQuery();
        HttpSession se=request.getSession();
        int k;
        String product_id=request.getParameter("product_id");
        while(rs.next())
            {
              out.println("<tr>");
                for(k=1;k<=4;k++)
                    {
                     String price=rs.getString(3);
                     se.setAttribute("price", price);
                     out.println("<td>"+rs.getString(k)+"</td>");  
                    }
        }
        se.setAttribute("product_id", product_id);
        if(product_id!=null)
        {
 
            response.sendRedirect("view.jsp");
        }
        
        }
        catch(Exception e)
        {
            out.println(e);
        }
        %>
   
       
       </table></center>
        
        <form action ="mobileMarket.jsp" method="post" onsubmit="return validateForm()" name="myForm"> 
            
            <table>
                <tr>
                    <td>Enter product ID: <input type="text" name="product_id"></td><td>
                        <input type="submit" value="Purchase" ></td></tr>
            </table>
        </form>
        
        
        <form method="post" action="laptopMarket.jsp">
        
            <input type = "Submit" value="Go To Laptop market"  >
        </form>
        <form method="post" action="clothsMarket.jsp">
        
            <input type = "Submit" value="Go To Cloths Market"  >
        </form>
       
        
    </body>
    <%@include file="footer.jsp" %>
</html>
