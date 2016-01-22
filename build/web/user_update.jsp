<%-- 
    Document   : user_update
    Created on : May 31, 2014, 8:32:09 PM
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
        <title>Update Profile</title>
       <style>
            .tbl
            {
                border:1px solid black;
                width:700px;
                font-size: 20px;
                color:black;
                background-position: right; 
            }
            
           
        </style>  
    </head>
    <body>
        <center>
        <form method="post" action="user_update.jsp">   
            <table class="tbl">
                  <th>Fill Update Form</th>
                <tr><td>Name </td><td>  <input type="text" name="t1" class="btn"></td></tr> 
        <%@include file="connect.jsp" %> 
        <%
        try
                          {                    
        String name,password,mobile,address;
        name=request.getParameter("t1");
        password=request.getParameter("t3");
        mobile=request.getParameter("t4");
        address=request.getParameter("t5");
        String s;
        HttpSession se=request.getSession();
       String email =(String)session.getAttribute("id");
       
       
       String x;
       
       
       out.println("Welcome :"+email);
       %>
        
         <tr><td> Email </td><td><input type="text"  class="btn" value="<% out.println(email);  %>"   disabled></td></tr>       
                
                
                <%

        if(name!=null)
                       {
        s="update usertbl set name='"+ name +"' , password='"+password+"',mobile='"+mobile+"',address='"+address+"' where email='"+ email +"'";
        //Class.forName("com.mysql.jdbc.Driver");
        //Connection con =DriverManager.getConnection("jdbc:mysql://localhost:3306/onlineshopping","root","password");
        PreparedStatement pst=con.prepareStatement(s);
        int i=pst.executeUpdate();
        //Statement st=con.createStatement();
       // ResultSet rs=st.executeQuery("select *from usertbl");
        
        if(name!=null)
                       {
           // out.println("Name &nbsp Email &nbsp Password  <br>");
        //while(rs.next())
                     //  {
            
           // out.println(rs.getString(1)+"  "+rs.getString(2)+"  "+rs.getString(3)+"<br>");
            
       // }
           // out.println("<br> <br> Updated    ");
               
                       
                       if(i>0)
                       {
                           out.println("Updated");
                       }
                       
                       }
               }
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
        
        
        
        
        %>
        
       
        
        <tr><td>Password   </td><td> <input type="text" name="t3" class="btn"></td></tr>
           <tr><td>Mobile Number </td><td><input type="text" name="t4" class="btn"></td></tr>
           <tr><td>Address    </td><td> <input type="text" name="t5" class="btn"></td></tr>
           <tr><td> </td><td><input type="Submit" value="Update" class="btn"></td></tr>
            
        
        
         </table>
            
        </form>
        </center>
        
        
        
        
        
        
        
         <center>
        <table>
            <tr>
                <td>
        <form method="post" action="user_profile.jsp">
        
        <input type = "Submit" value="Go To profile" class="btn">
        </form></td>
       
        
        
        
        </tr>
            
        </table></center>
        
        
    </body>
    <%@include file="footer.jsp" %>
</html>
