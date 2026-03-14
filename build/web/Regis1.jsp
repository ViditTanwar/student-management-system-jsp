<%-- 
    Document   : Regis1.jsp
    Created on : 13 Mar, 2026, 12:00:58 AM
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
                        st.executeUpdate("insert into login value('"+s1+"','"+s2+"')");
                        con.close();
                        response.sendRedirect("Login.jsp");
                        }
                        catch(Exception e){
                            out.println(e);
                        }
                                                


            %>
    