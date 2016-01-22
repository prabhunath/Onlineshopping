<%-- 
    Document   : admin_profile
    Created on : May 31, 2014, 8:33:12 PM
    Author     : prabhunath
--%>
<%@ include file="header.jsp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <style>
            
            .div1{
                display: inline-block;
                
            }
           
            .tbl
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
            
        
            .person
            {
             font-size: xx-large;  
             margin-left: 900px;
            }
            
            .div2
            {
                display:inline-block; 
                border:1px solid white;
            }
            #d1
            {
                background-image: url("Images/black.jpg");
                height:220px;
                width:340px;
                 margin-top: 40px;
            }
            #d2
            {
                background-image: url("Images/hp.jpg");
                height:210px;
                width:340px;
                 margin-top: 40px;
            }
            #d3
            {
                background-image: url("Images/Home.jpg");
                height:210px;
                width:250px;
                 margin-top: 40px;
            }
            
            
        </style>   
    </head>
    <body>
        
        
    <center><div>  <h1>Welcome to  Profile!</h1></div></center>
        
        <%@include file="connect.jsp" %> 
        
        <%
        HttpSession se=request.getSession();       
        PreparedStatement pst=con.prepareStatement("select *from admintbl");
        String email=(String)session.getAttribute("id");
        se.setAttribute("admin_id", email);
        if(email.equals("noone"))
        {
            out.println("Please login again!!");
        }
        else
        {
        out.println("<div> Welcome "+email+"</div>");
        
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select count(*) from laptop where uploadedby='"+email+"'");
        if(rs.next())
        {
        int num_of_laptop=Integer.parseInt(rs.getString(1));
        out.println("<br>Laptop: "+num_of_laptop+"<br>");
        }
        
        rs=st.executeQuery("select count(*) from mobile where uploadedby='"+email+"'");
        if(rs.next())
        {
        int num_of_mobile=Integer.parseInt(rs.getString(1));
        out.println("Mobile: "+num_of_mobile+"<br>");
        }
          rs=st.executeQuery("select count(*) from cloths where uploadedby='"+email+"'");
        if(rs.next())
        {
        int num_of_cloths=Integer.parseInt(rs.getString(1));
        out.println("Cloths: "+num_of_cloths);
        }
        
        
        }
        
        %>
        
        <center>
        <div class="div1">
         <div class="div1">
            <form method="post" action="logout.jsp">
                <input type="submit" value="Logout" >
            </form>
         </div>
         <div class="div1">
                <form method="post" action="admin_update.jsp">
                    <input type="submit" value="Update Profile" >
                </form>
         </div>
            <div class="div1">     
        <form method="post" action="cloths.jsp">
        
        <input type = "Submit" value="Cloths Sale" >
        </form>
            </div>
            <div class="div1">
        
                    <form method="post" action="laptop.jsp">       
                     <input type = "Submit" value="Laptop Sale" >
                     </form>
            </div>
            <div class="div1">        
                <form method="post" action="mobile.jsp">
                  <input type = "Submit" value="Mobile Sale"  >
                  </form>
                
            </div>
                
            <div class="div1">    
                <form method="post" action="admin_itemPurchaseOrder.jsp">
                    <input type="submit" value="Deliver the Product" >
                </form>
            </div>
        
            
        </div>
        </center>
     <div style="margin-top: 100px;">
     <%@include file="footer.jsp" %>
        </div>
</html>
