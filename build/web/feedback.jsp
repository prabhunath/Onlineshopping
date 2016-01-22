<%-- 
    Document   : feedback
    Created on : Nov 18, 2015, 5:07:30 PM
    Author     : Prabhunath
--%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feed back</title>
    </head>
    <body>
        <h1>Hello World!</h1>
        <%
            String productid=request.getParameter("productid");
            out.println(productid);
            
            %>
    </body>
</html>
<%@include file="footer.jsp" %>