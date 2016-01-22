<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>view</title>
        <style>
            
            .tbl
            {
                border:1px solid black;
                width:100%;
                height:100px;
                font-size:30px;
                color:#ff3333;
                background-position: right;
            }
             .tbll
            {
                border:4px solid white;;
                width:100%;
                font-size: 20px;
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
    <h3 > Details Of Your Selected Materials </h3>
    <center>  <table class="tbll"> 
            <tr>
                <td>Brand</td>
                <td>Price</td> 
                <td>For Person</td>
                <td>Type</td>
                <td>Size </td>
                <td>Color</td>
                <td>Product Id</td>
                <td>Owner </td>
            </tr>
        </table>
    </center>
    <center>    
    <table class="tbl" >
        <%@include file="connect.jsp" %> 
        <% 
            try
            {
            HttpSession se=request.getSession();
            String idno =(String)se.getAttribute("id");
            String user_email=(String)se.getAttribute("user_email");
            out.println("Welcome"+user_email+"<br>");
            String money="";
            String brand2;
            PreparedStatement  pst =con.prepareStatement("select * from cloths where id='"+idno+"'");
            ResultSet rs=pst.executeQuery();
            Statement st=con.createStatement();
            ResultSet rr=st.executeQuery("select * from cloths where id='"+idno+"'");
            out.println(" <tr>");
            while(rr.next())
            {
                for(int i=1;i<=8;i++)
                {
                    if(i==1)
                    {
                        brand2=rr.getString("id");
                        out.println("BRAND="+brand2);
                        se.setAttribute("product_id", brand2);
                    }
                    if(i==2)
                    {
                        money=rr.getString(i);
                    }
                   if(i==8)
                   {
                       se.setAttribute("owner_email", rr.getString(i));
                   }
                out.println("<td>"+rr.getString(i)+"</td>");
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
            }           
            }
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