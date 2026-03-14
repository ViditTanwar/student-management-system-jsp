<%-- 
    Document   : Search
    Created on : 13 Mar, 2026, 12:05:04 PM
    Author     : sudhe
--%>
 <%@page import ="java.sql.*"%>
 <%
 String s12=request.getParameter("b2");
 if(s12!=null){
      String s21=request.getParameter("v1");
 String s22=request.getParameter("v2");
 String s23=request.getParameter("v3");
 String s24=request.getParameter("v4");
 String s25=request.getParameter("v5");

     
     
     
        try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///vidit?useSSL=false","root","root");
                        Statement st=con.createStatement();
                        st.executeUpdate("update InsertS set Uname='"+s22+"',Uph='"+s23+"',Uch='"+s24+"',Umath='"+s25+"' where Uroll='"+s21+"' ");
                        con.close();
                        response.sendRedirect("ShowAll.jsp");
                        }
                        catch(Exception e){
                            out.println(e);
                        }
     
     
     
 }
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 %>

<html>
    <head>
        <link rel="stylesheet" href="vidit.css">

             
    </head>
    
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
                <center>

            <form action="Search.jsp">

        Enter Roll<input type="text" name="n1"><br>
           
           <input type="submit" name="b1" value="Search">
           
</form>
                <% 
                    String s1=request.getParameter("b1");
                if(s1!=null){
                                  String s11=request.getParameter("n1");

                     try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///vidit?useSSL=false","root","root");
                        Statement st=con.createStatement();
                       ResultSet rs =st.executeQuery("select * from InsertS where Uroll='"+s11+"' ");
                       if(rs.next()){%>
                       <form action="Search.jsp">
                           Roll nm<input type="text" name="v1" value="<%out.println(rs.getString(1));%>"><br>
                                Name<input type="text" name="v2" value="<%out.println(rs.getString(2));%>"><br>  
                           Physics<input type="text" name="v3" value="<%out.println(rs.getString(3));%>"><br>  
                            Chemstry<input type="text" name="v4" value="<%out.println(rs.getString(4));%>"><br>  

                           Math<input type="text" name="v5" value="<%out.println(rs.getString(5));%>"><br>  
                               <input type="submit" name="b2" value="Ubdate">
                               </form>
                       <%}
                       else{
                           out.println("<p>invaid roll nm</p>");
                       }
                        con.close();
                        
                        }
                        catch(Exception e){
                            out.println(e);
                        } 
}%>
                            </center>

    </body>
</html>