<html>
    <head>
        <style>
                    ul li {
            list-style-type: none;
            margin: 0;
            padding: 10;
            display: inline;
            font-size: 18;
            float: right;
            color:white;
           
               
        }
        a{
            color:white;
        }

            
        </style>
    </head>
    <body>
        <header>
<div style="border:1px solid black; width:100%; height:60px;background-color:black; align:center; border:opx solid white;border-radius:2px; ">
    <ul class="sub-menu dl-menu">
            
            <li><a href="user_register.jsp">User Register</a></li>
            <li><a href="user_login.jsp">User Login</a></li>
            <li><a href="admin_register.jsp">Admin Register</a></li>
            <li><a href="admin_login.jsp">Admin Login</a></li>
            <li><a href="report.jsp">Report</a></li>    
            <li><table>
                <tr>
                    <form action="search.jsp" method="POST">
                    <td>
                <input style="border:0px solid white;border-radius:30px 0px 0px 30px; width:300px;"  name="search">
                    </td>
                    <td>
                        
                            <input style="border:0px solid white;border-radius:0px 30px 30px 0px; " type="submit" value="Search" >
                         
                </td>
                 </form> 
            </tr>
            </table>
            </li>
           
           <a href="index.jsp"> <li style="background-image:url('Images//logo.png'); width:60px;height:50px; border:0px solid white;border-radius:30px; ">
               </li></a>
            <h2 style="color:red;">ShopZyada</h2>
  </ul>
        </header>
        </body>
</html>