<%-- 
    Document   : deliver
    Created on : Jun 5, 2014, 9:49:43 AM
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
        <title>JSP Page</title>
    </head>
    <body>
        <%@include file="connect.jsp" %> 
 <%
    try
    {
            PreparedStatement pst=con.prepareStatement("select *from purchase");
            ResultSet rs=pst.executeQuery();
            String email=request.getParameter("t1");
            out.println("Customer Email="+email+"<br><hr>");
            while(rs.next())
            {
                for(int i=1;i<=9;i++)
                {
                out.println(rs.getString(i));
                }
                out.println("<br>");
            }
            String s="delivered";
            String delivered_by="";
            Statement st = con.createStatement();
            HttpSession updater=request.getSession();
            delivered_by=(String)updater.getAttribute("id");
            int x=st.executeUpdate("update purchase set deliver='"+s+"' , delevered_by='"+delivered_by+"' where email='"+email+"' ");
            out.println(email);    
            out.println("<br> <br> Item Status Changed Successfully<br>");
        
            }
            catch(Exception e)
            {
                out.println(e);
            }
            
            %>
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
