<%-- 
    Document   : onlinePayment
    Created on : Jun 6, 2014, 10:08:48 PM
    Author     : prabhunath
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Online Payment</title>
    </head>
    <body>
        <h1>Online Payment</h1>
        
        <ol style="color:black;"> 
            <li>Select bank</li>
            <li>Process the transaction</li>
            <li>Confirm the payment by OTP </li>
            <li>Print the Slip</li>
        </ol>
        <form>
            <input type="submit" value="Do Payment!!">

        </form>
        
        <%
            HttpSession se=request.getSession();
            String idno =(String)se.getAttribute("id"); 
            se.setAttribute("id", idno);
            
            %>
        
       
            
            
    </body>
    <%@include file="footer.jsp" %>
</html>
