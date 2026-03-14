

<%-- 
    Document   : ShowAll
    Created on : 13 Mar, 2026, 10:35:27 AM
    Author     : sudhe
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="java.sql.*"%>

<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="vidit.css">

    </head>
    <center>
    <body>
        <nav class="navbar">
    <a href="Login.jsp">Login</a>
    <a href="Regis.jsp">Registration</a>
    <a href="Insert.jsp">Insert Marks</a>
    <a href="ShowAll.jsp">ShowAll data</a>
    <a href="Search.jsp">Search student</a>
    <a href="Update.jsp">Update data</a>
    <a href="Delete.jsp">Delete student</a>
</nav>
       <table class="showall-table">
    <tr>
        <th>Roll</th>
        <th>Name</th>
        <th>Physics</th>
        <th>Chemistry</th>
        <th>Math</th>
    </tr>
<%
    try{
        Class.forName("com.mysql.cj.jdbc.Driver");
        Connection con=DriverManager.getConnection("jdbc:mysql:///vidit?useSSL=false","root","root");
        Statement st=con.createStatement();
        ResultSet rs = st.executeQuery("select * from InsertS");
        while(rs.next()){
%>
    <tr>
        <td><%= rs.getString(1) %></td>
        <td><%= rs.getString(2) %></td>
        <td><%= rs.getString(3) %></td>
        <td><%= rs.getString(4) %></td>
        <td><%= rs.getString(5) %></td>
    </tr>
<%
        }
        con.close();
    } catch(Exception e){
        out.println(e);
    }
%>
</table>
    </body>
    </center>
</html>
