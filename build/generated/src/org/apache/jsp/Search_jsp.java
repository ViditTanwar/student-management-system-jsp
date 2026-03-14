package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write(" \n");
      out.write("\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("               <a href='Insert.jsp'> Insert Marks </a><br>\n");
      out.write("            <a href='ShowAll.jsp'> ShowAll data </a><br>\n");
      out.write("    <a href='Search.jsp'> Search student </a><br>\n");
      out.write("            <a href='Update.jsp'> Update data </a><br>\n");
      out.write("              \n");
      out.write("\n");
      out.write("    <a href='Delete.jsp'> Delete student </a><br>\n");
      out.write("                    <a href='Login.jsp'> Login </a><br>\n");
      out.write("\n");
      out.write("            <a href='Regis.jsp'> Registration </a><br>\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("    \n");
      out.write("    <body>\n");
      out.write("                <center>\n");
      out.write("\n");
      out.write("            <form action=\"Search.jsp\">\n");
      out.write("\n");
      out.write("        Enter Roll<input type=\"text\" name=\"n1\"><br>\n");
      out.write("           \n");
      out.write("           <input type=\"submit\" name=\"b1\" value=\"Search\">\n");
      out.write("           \n");
      out.write("</form>\n");
      out.write("                ");
 
                    String s1=request.getParameter("b1");
                if(s1!=null){
                                  String s11=request.getParameter("n1");

                     try{
                        Class.forName("com.mysql.cj.jdbc.Driver");
                        Connection con=DriverManager.getConnection("jdbc:mysql:///vidit?useSSL=false","root","root");
                        Statement st=con.createStatement();
                       ResultSet rs =st.executeQuery("select * from InsertS where Uroll='"+s11+"' ");
                       if(rs.next()){
      out.write("\n");
      out.write("                       <form action=\"Search.jsp\">\n");
      out.write("                           Roll nm<input type=\"text\" name=\"v1\" value=\"");
out.println("<p>"+rs.getString(1)+"</p>");
      out.write(")\"><br>\n");
      out.write("                                Name<input type=\"text\" name=\"v2\" value=\"");
out.println("<p>"+rs.getString(2)+"</p>");
      out.write(")\"><br>  \n");
      out.write("                           Physics<input type=\"text\" name=\"v3\" value=\"");
out.println("<p>"+rs.getString(3)+"</p>");
      out.write(")\"><br>  \n");
      out.write("                           Chemstry<input type=\"text\" name=\"v4\" value=\"");
out.println("<p>"+rs.getString(4)+"</p>");
      out.write(")\"><br>  \n");
      out.write("                           Math<input type=\"text\" name=\"v5\" value=\"");
out.println("<p>"+rs.getString(5)+"</p>");
      out.write(")\"><br>  \n");
      out.write("                               <input type=\"submit\" name=\"b2\" value=\"Ubdate\">\n");
      out.write("                               </form>\n");
      out.write("                       ");
}
                       else{
                           out.println("<p>invaid roll nm</p>");
                       }
                        con.close();
                        
                        }
                        catch(Exception e){
                            out.println(e);
                        } 
}
      out.write("\n");
      out.write("                            </center>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
