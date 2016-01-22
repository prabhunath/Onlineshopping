<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="header.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Welcome</title>
        
        
        <style>
            #div1{
                
                
                border:1px solid black;
                margin-left: 100px;
            
            }
            
            .tbl
            {
                border:4px solid #66ff00;
                
                border-radius:34px 0px 34px 0px;
                width:700px;
                font-size: x-large;
                color:#ff3333;
                background-position: right;
                color:#00ffcc;
                
            }
           
            .abc{
                
                display:inline-block;
            }
            
            
            
        </style>
        
        
        
    </head>
    <body>
    <h3>Which Item You Want To Sale</h3>
        
    
        <div class="abc" id="div1">        
            <div class="abc">
        <form method="post" action="mobile.jsp">
        
        <input type = "Submit" value="Mobile Sale"  >
        </form>
            </div>   
            <div class="abc">  
            
        <form method="post" action="laptop.jsp">
        
        <input type = "Submit" value="Laptop Sale" >

        </form>
            </div>
            <div class="abc">
        <form method="post" action="cloths.jsp">
        
        <input type = "Submit" value="Cloths Sale" >
        </form>
            </div>
        
        </div>

        
        
        <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile" class="btnp">
        </form>
        
  
     <div style="margin-top: 350px;">
     <%@include file="footer.jsp" %>
        </div>
    </body>
</html>
