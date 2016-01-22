<!DOCTYPE html>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Laptop view</title>
         
    </head>
    <body>
    <h3 style="color:black;"> Details Of Your Selected Materials </h3>
    <center>
        <table style="border:1px solid black;width:80%;">
            <tr style="background-color:black; color:white;">
                <td>Brand</td>
                <td>Specification</td>
                <td>Price</td>
                <td>Clock Speed</td>
                <td>RAM</td>
                <td>HDD</td>
                <td>System Architecture</td>
                <td>Battery</td>
                <td>Warranty </td>
                <td>Product ID</td>
                <td>Owner</td>
            </tr>
        
      
   
        <%@include file="connect.jsp" %> 
        <% 
            try
            {   
            HttpSession se=request.getSession();
            String idno =(String)se.getAttribute("product_id");
            String user_email=(String)se.getAttribute("user_email");
            out.println("Hello:"+user_email);
            String money="";
            String product_id;
            String brand;
            PreparedStatement  pst =con.prepareStatement("select * from laptop where id='"+idno+"'");
            ResultSet rs=pst.executeQuery();
            Statement st=con.createStatement();
            ResultSet rr=st.executeQuery("select * from laptop where id='"+idno+"'");
            out.println(" <tr style='font-size:15px;color:black;'>");
            while(rr.next())
            {
                for(int i=1;i<12;i++)
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
                    if(i==10)
                    {
                       product_id=rr.getString(i);
                        se.setAttribute("product_id", product_id);
                    }
                    if(i==11)
                    {
                       se.setAttribute("owner_email", rr.getString(i));
                    }
                    
                    out.println("<td style='background-color:grey;'>"+rr.getString(i)+"</td>");
                    
                }
            }
            se.setAttribute("money", money);
            out.println("</tr>"); 
           out.println("You have to Pay "+ money );
           String mode;
           mode=request.getParameter("x");
            if(mode!=null)
            {
                if(mode.equals("online"))
                {
                response.sendRedirect("onlinePayment.jsp");
                }
                else
                {
                    response.sendRedirect("purchase.jsp");
                }
            } }
            catch(Exception e)
            {
               e.printStackTrace();
            }
            %>
        
        </table>
    </center>
            
    <form action="purchase.jsp" method="post">
        <table class="tbl">
            <th>Select Payment Mode</th>
           <tr><td>Online</td><td><input type="radio" name="x" value="online"></td></tr>
           <tr><td>Cash on Delivery</td><td><input type="radio" name="x" value="offline"></td></tr>
            <tr><td>   </td><td>    <input type="submit" value="DoPayment"></td></tr>
        </table>     
    </form>  
    
    
    </body>
     <%@include file="footer.jsp" %>
</html>
