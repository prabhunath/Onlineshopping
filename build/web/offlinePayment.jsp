<%-- 
    Document   : offlinePayment
    Created on : Jun 6, 2014, 10:09:26 PM
    Author     : prabhunath
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Offline Payment</title>
    </head>
    <body>
        <h1>Cash on Delivery Payment!!</h1>
        <p>Please do pay the amount while the product is delivered. </p>
        <form action="user_profile.jsp" method="post">
            <input type="submit" value="Do Payment!!">
            
        </form>
        
      
        
    </body>
    <%@ include file="footer.jsp"%>
</html>
