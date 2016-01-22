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
                
                
                border:2px solid #00ffcc;
                margin-left: 100px;
                border-radius:30px 30px 30px 30px;
                
            }
            .heading
            {
                border:3px solid #00cc99;
                width:700px;
                height:250px;
                background-image: url("Images/banner.jpg");
                background-repeat: no-repeat;
                color:#ff3333;
                border-radius:50px 50px 50px 50px;
                
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
            .btnp
            {
               
                border:2px solid;
                border-radius :12px 0px 12px 0px;
            }
            
            
        </style>
        
        
        
    </head>
    <body>
    <h3>Which Item You Want To Sale</h3>
        
    
        <div class="abc" >        
            <div class="abc">
        <form method="post" action="mobile.jsp">
        
        <input type = "Submit" value="Mobile Sale"  class="btn">
        </form>
            </div>   
            <div class="abc">  
            
        <form method="post" action="laptop.jsp">
        
        <input type = "Submit" value="Laptop Sale"  class="btn1">

        </form>
            </div>
            <div class="abc">
        <form method="post" action="cloths.jsp">
        
        <input type = "Submit" value="Cloths Sale" class="btn2">
        </form>
            </div>
        
        </div>

        
        
        <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile" class="btnp">
        </form>
        
  
    </body>
    <%@include file="footer.jsp" %>
</html>
