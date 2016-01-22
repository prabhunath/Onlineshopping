<%-- 
    Document   : cloths
    Created on : May 31, 2014, 11:53:31 PM
    Author     : prabhunath
--%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*"%>
<%@include file="header.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Cloths</title>
        
        
        <style>
            .div1{
                
                width:700px;
                border:2px solid #00ffcc;
                margin-left: 60px;
            }
            
            .tbl
            {
                border:1px solid white;
                width:100%;
                font-size: 20px;
                color:black;
                
            } 
            
        </style>
        
         <script>
            function validateForm() {
                var x = document.forms["myForm"]["t1"].value;
                var y=document.forms["myForm"]["t2"].value;
                var a=document.forms["myForm"]["t3"].value;
                var b=document.forms["myForm"]["t4"].value;
                var c=document.forms["myForm"]["t5"].value;
                var d=document.forms["myForm"]["t6"].value;


                if (x==null || x=="") {
                    alert("Required Field Must Enter Brand Name");
                    return false;
                }

                if (y==null || y=="") {
                    alert("Required Field Must Enter  Price Of Product");
                    return false;
                }

                if (a==null || a=="") {
                    alert("Required Field Must Enter  For Person");
                    return false;
                }
                if (b==null || b=="") {
                    alert("Required Field Must Enter  Type Of Cloths");
                    return false;
                }
                if (c==null || c=="") {
                    alert("Required Field Must Enter Size Of Cloth");
                    return false;
                }
                if (d==null || d=="") {
                    alert("Required Field Must Enter  Color if mixed then enter mixed");
                    return false;
                }


            }



            </script>   
      
</head>
    <body>
        
        <%@include file="connect.jsp" %> 
<%
 try
   {      
        HttpSession se=request.getSession();
        String admin_id=(String)se.getAttribute("admin_id");
        out.println("Welcome:"+admin_id+"<br>");
        String brand,price,forperson,type1,size,color;
        brand=request.getParameter("t1");
        price=request.getParameter("t2");
        forperson=request.getParameter("t3");
        type1 =request.getParameter("t4");
        size =request.getParameter("t5");
        color=request.getParameter("t6");
        String s;
        int j=0;
      if(brand!=null && color!=null)
        {
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select count(*) from cloths");
             int count_id=0;
             if(rs.next())
             {
                count_id=Integer.parseInt(rs.getString(1)); 
             }
        s="insert into cloths values('"+brand+"','"+price+"','"+forperson+"','"+type1+"','"+size+"','"+color+"','"+("Cloths_"+count_id)+"','"+admin_id+"')";
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        
       
        
        if (i>0)
             {
                out.println("Successfully  Added!!");
      
             }
        }
    }
        catch(Exception e)
                {
            out.println(e);
        }    
        %>
        
        
         <h3>Enter details of your Cloth product!!</h3>
        <center>
        <form method="post" action="cloths.jsp" onsubmit="return validateForm();" name="myForm" >
            
            <table class="tbl" >
            
            <tr>  <td> Brand </td><td> <input type="text" name="t1" class="btn" ></td></tr>
            <tr>  <td> Price </td><td> <input type="text" name="t2" class="btn" ></td></tr>
            <tr>  
                <td> For Person </td>
                <td>  <input type="radio" name="t3" value="Men"> Men
                    <input type="radio" name="t3" value="Women"> Women
                   <input type="radio" name="t3" value="Boy"> Boy
                   <input type="radio" name="t3" value="Girl"> Girl
                </td>
            </tr>

            <tr>  
                <td> Type </td>
                <td> <input type="radio" name="t4" value="shirt">Shirt 
                    <input type="radio" name="t4" value="paint">Paint
                    <input type="radio" name="t4" value="sharee">Sharee
                    <input type="radio" name="t4" value="kurti">Kurti/Laggi
                </td>
            </tr>
            <tr>  <td>Size </td><td> <input type="text" name="t5" class="btn" ></td></tr>

            <tr>  <td> Color </td><td> <input type="text" name="t6" class="btn" ></td></tr>
            
            <tr>  <td> </td><td> <input type="submit" value="Add to sale" class="btn"></td></tr>
            </table>
            
            </form>
        </center>
        
        
        
         <h5>These information will be displayed to customers!!! <br>Make Sure All information are correct!!</h5>
        <form method="post" action="admin_profile.jsp">
            <input type="submit" value="Go to Profile" class="btn">
        </form>
        
        
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
