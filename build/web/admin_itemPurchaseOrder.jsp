<%-- 
    Document   : admin_itemPurchaseOrder
    Created on : May 31, 2014, 8:36:14 PM
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
        <title>Order for Shipment</title>
        
        <style>
            
           
            .tbl
            {
                border:1px solid black;
                width:100%;
                font-size:15px;
                color:black;
                background-position: right;
            }
         
            #form1
            {
                background-image: url("Images/A21.jpg");
                background-repeat: no-repeat;
                background-color: white;   
            } 
            
        </style>
        
        
       <script>
function validateForm() {
    var x = document.forms["myForm"]["t1"].value;
    
    
    if (x==null || x=="") {
        alert("Required Field Must Enter person name ");
        return false;
    }
    
    
}
</script>   
        
    </head>
    <body>
    <h3>Customer Details for shipment</h3>
        
    
        <div>
            
         <%@include file="connect.jsp" %>
<%
 try
        {
            // CODE FOR DELIVERED PRODUCTS:
        PreparedStatement pst=con.prepareStatement("select *from purchase where deliver='delivered'");
        ResultSet rs=pst.executeQuery();
        out.println("<p>Delivered Products:</p><hr><center> <table class=\"tbl\" > "
                + "<tr style='background-color:black;color:white;'> <td>Customer Name</td><td> Customer  Email </td>"
                + "<td> Mobile"
                //+ "</td><td> State</td><td> City </td><td> Pin</td>"
                + "<td> Address</td>  <td>Item</td>"
                + "<td>Status of Delivery</td><td>Delivered By</td><td>Get More details</td>  </tr>");
       
        while(rs.next())
           {
            out.println("<tr>");    
            for(int i=1;i<=10;i++)
             {
                 if(i==4 || i==5 || i==6)
                 {
                     continue;
                 }
                 else
                 {
                     out.println("<td>"+rs.getString(i)+"");
                 }
                 
                 if(i==8)
                 {
                     Statement st=con.createStatement();
                     String query[]= new String[3];
                     query[0]="select id from laptop where brand='"+rs.getString(i)+"'";
                     query[1]="select id from mobile where brand='"+rs.getString(i)+"'";
                     query[2]="select id from cloths where brand='"+rs.getString(i)+"'";    
                     boolean flag=true;
                     for(int i1=0;i1<3;i1++)
                     {
                         
                     ResultSet rsid= st.executeQuery(query[i1]);
                     if(rsid.next())
                     {
                         flag=false;
                         out.println("<br><u style='color:red;'>(Product id:"+rsid.getString("id")+")</u>");
                     }
                    
                     }
                     if(flag)
                     {
                         out.println("<br>(Product id Not found)");
                     }
                     
                 }
                 
                 out.println("</td>");
            }
        }
        
        out.println("</table> </center>");
        
        
 ///////////////////////////////////////////////////////////////////////////////////////
         // CODE FOR NOT DELIVERED PRODUCTS:
        PreparedStatement pst_notdelivered=con.prepareStatement("select *from purchase where deliver='not delivered'");
        ResultSet rs_notdelivered=pst_notdelivered.executeQuery();
        out.println("<p>Not Delivered Products:</p><hr><center> <table class=\"tbl\" > "
                + "<tr style='background-color:black;color:white;'> <td>Customer Name</td><td>Customer  Email </td>"
                + "<td> Mobile</td><td> State</td><td> City </td><td> Pin</td><td> Address</td>  <td>Item</td>"
                + "<td>Status of Delivery</td> <td>Delivered By</td></tr>");
        
        while(rs_notdelivered.next())
           {
            out.println("<tr>");    
            for(int i=1;i<=10;i++)
             {
                 out.println("<td>"+rs_notdelivered.getString(i)+"");
                 if(i==8)
                 {
                     
                     Statement st=con.createStatement();
                     ResultSet rsid= st.executeQuery("select id from laptop where brand='"+rs_notdelivered.getString(i)+"'");
                     if(rsid.next())
                     {
                     out.println("<br>(Product id="+rsid.getString(1)+")");
                     }
                     else
                     {
                         out.println("<br>(Not found)");
                     }
                     
                 }
                 out.println("</td>");
            }
        }
        out.println("</table> </center>");
        
        
        
        
        
               }
        catch(Exception e)
                               {
            out.println(e);
        }
        
        
        
        %>
            
        </div>
    <br><hr>
    <table style="border:1px solid black; ">
        <th style="background-color:black;color:white;">Update delivery status:</th>
        <form method="post" action="deliver.jsp" onsubmit="return validateForm();" name="myForm">
           <tr><td> Enter customer Email to update Delivery Status :</td><td><input type="text" name="t1"></td></tr>
         <!--  <tr><td> Enter customer Product id to update Product details :</td><td><input type="text" name="t2"></td></tr> -->
           <tr><td></td><td><input type="submit"  value="Update!!"> </td></tr>
        </form>
      </table>  
    </body>
    <%@include file="footer.jsp" %>
</html>
