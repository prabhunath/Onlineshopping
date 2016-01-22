<%@include file="connect.jsp" %>
<%
    HttpSession se=request.getSession();
    out.print(se.getCreationTime());
    out.print(se+"<br>");
     out.print(se.getAttribute("id") +"<br>"); 
     out.print(se.getId()+"<br>");
     out.print(se.getLastAccessedTime()+"<br>");
     out.print(se.getMaxInactiveInterval()+"<br>");
     out.print(se.getServletContext()+"<br>");
     out.print(se.getSessionContext()+"<br>");
     out.print(se.getValue("id") +"<br>");
     out.print(se.getValueNames() +"<br>");
     out.print(se.hashCode() +"<br>");
     out.print(se.isNew() +"<br>");
     se.setAttribute("id", "noone") ;
     out.print(se.toString() +"<br>");
     se.invalidate();
     response.sendRedirect("admin_login.jsp");
    /*
    se.removeAttribute("id");
    out.print("id="+se.getAttribute("id") +"<br>"); 
    
    out.print("id="+se.getAttribute("id") +"<br>");
    out.print("invalidated<br>");
    //se.notify();
     //out.print(se.getAttribute("id") +"<br>");
            */
%>