<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mobile View</title>
        <style>
            
            .tbl
            {
                border:1px solid black;
                width:100%;
                height:30px;
                font-size:15px;
                color:black;
                background-position: right; 
            }
        body{
                background-repeat: round;
                width:98%;
                height:600px;
            }
        
        </style>    
        
    </head>
    <body>
    <center><h2> Selected Product </h2></center>
        
        
        
    <center>  
        <table class="tbl">
            <tr style='background-color:black;color:white;'>
                <td>Brand</td>
                <td>Model</td>
                <td>Price</td> 
                <td>Sim Type</td>
                <td>OS</td><td>Processor
                </td><td>Size</td>
                <td>Camera</td>
                <td>Weight</td>
                <td>Battery </td>
                <td>Warranty </td>
                <td>ID</td>
                 <td>Uploaded By</td>
            </tr>
        
        <%@include file="connect.jsp" %> 
        <%
            
            try
            {  
            HttpSession se=request.getSession();
            String product_id =(String)se.getAttribute("product_id");
            //out.println("PRODUCT ID:"+product_id);
            String money="";
            String brand;
            Statement st=con.createStatement();
            String query="select * from mobile where id='"+product_id+"'";
            
           
            ResultSet rr=st.executeQuery("select * from mobile where id='"+product_id+"'");
           // out.print(query);
            out.println(" <tr>");
            while(rr.next())
            {
                for(int i=1;i<=13;i++)
                {
                   
                    if(i==1)
                    {
                        brand=rr.getString(1);
                        se.setAttribute("brand", brand);
                    }
                    if(i==3)
                    {
                        money=rr.getString(i);
                    }
                out.println("<td>"+rr.getString(i)+"</td>");
                
                
                }
            }
            se.setAttribute("money", money); 
            out.println("</tr>");
           
           String mode;
           mode=request.getParameter("x");
            if(mode!=null)
            {
                out.println(mode);
                if(mode.equals("online"))
                {
                response.sendRedirect("onlinePayment.jsp");
                }
                else
                {
                    response.sendRedirect("purchase.jsp");
                }
            }  
            }
            catch(Exception e)
            {
               e.printStackTrace();
            }
            %>
        
        </table>
    </center>
    <center>    
    
            
    <form action="purchase.jsp" method="post">
        <table class="tbl">
            <th>Select Payment Mode</th> 
            <tr><td>Online</td><td><input type="radio" name="x" value="online"></td></tr>
            <tr><td>Cash on delivery</td><td><input type="radio" name="x" value="offline"></td></tr>
             <tr><td>   </td><td>    <input type="submit" value="DoPayment"></td></tr>    
        </table>     
     </form>  
    </body>
    <%@include file="footer.jsp" %>
</html>