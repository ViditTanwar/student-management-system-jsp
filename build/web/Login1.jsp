<%-- 
    Document   : Login1
    Created on : 13 Mar, 2026, 12:21:53 AM
    Author     : sudhe
--%>

<%@page import ="java.sql.*"%>

        <%
            String s1=request.getParameter("un");
                        String s2=request.getParameter("up");
                        try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///vidit?useSSL=false","root","root");
                        Statement st=con.createStatement();
                       ResultSet rs =st.executeQuery("select * from login where Uname='"+s1+"' AND Upass='"+s2+"' ");
                       if(rs.next()){
                           Cookie ck=new Cookie("un",s1);
                           ck.setMaxAge(60*30);
                           response.addCookie(ck);
                       response.sendRedirect("Menudemo.jsp");
                       }
                       else{
                           response.sendRedirect("Login.jsp?s1=Invalid user name and passs");
                       }
                        con.close();
                        
                        }
                        catch(Exception e){
                            out.println(e);
                        }
                                                out.println("<h1>data insert</h1>");


            %>