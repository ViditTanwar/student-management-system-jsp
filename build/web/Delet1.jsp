<%-- 
    Document   : Delet1
    Created on : 13 Mar, 2026, 11:59:01 AM
    Author     : sudhe
--%>
 <%@page import ="java.sql.*"%>

        <%
            String s1=request.getParameter("s1");
                      
                        try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///vidit?useSSL=false","root","root");
                        Statement st=con.createStatement();
                        st.executeUpdate("delete from InsertS where Uroll='"+s1+"'");
                        con.close();
                        response.sendRedirect("ShowAll.jsp");
                        }
                        catch(Exception e){
                            out.println(e);
                        }
                                                


            %>
    