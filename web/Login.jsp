<%-- 
    Document   : Login
    Created on : 13 Mar, 2026, 12:19:37 AM
    Author     : sudhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
<link rel="stylesheet" href="vidit.css">
    </head>
    
    <body>
         <nav class="navbar">
    <a href="Login.jsp">Login</a>
    <a href="Regis.jsp">Registration</a>
    
</nav>
        <center>
            <%
                String s11=request.getParameter("s1");
                if(s11!=null){ %>
                <%=s11%>
                <%}%>

            <form action="Login1.jsp">

        Name<input type="text" name="un"><br>
           Password<input type="password" name="up"><br>
           <input type="submit" value="Login">
</form>
                </center>

    </body>
</html>
