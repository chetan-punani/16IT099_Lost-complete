

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewServlet11 extends HttpServlet {

    
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        PrintWriter out = response.getWriter();
            
             String name = request.getParameter("cname");
            String oldpassword = request.getParameter("coldpassword");
            String newpassword = request.getParameter("cnewpassword");
            

         try {
         // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");

         // Open a connection
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root", "");
         
         // Execute SQL query
         Statement stmt = conn.createStatement();
         String sql,query;
       
         //sql="update login set password='"+ newpassword +"' where dname='" +name +"'"; 
         
         PreparedStatement pst ;
         int a=0;
         ResultSet rs ;
         sql = "select name,password from login where name=?";
         pst = conn.prepareStatement(sql);
         pst.setString(1, name);
         rs = pst.executeQuery();
         
         while(rs.next()){
             a=1;
             query = "update login set password=? where name=?";
          pst=(PreparedStatement) conn.prepareStatement(query);
        pst.setString(1, newpassword);
        pst.setString(2, name);
         
         pst.executeUpdate();
         
          String msg="Password change successfully ";
           out.println("<br><br>"+"<font size='6' color=blue>" + msg +"</font>");
         RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/newjsp8.jsp");
                    dispatcher.include(request, response);
         }
         
         // Extract data from result set
         
          if(a==0){
            
             RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/newjsp7.jsp");
                    dispatcher.include(request, response);
        }
           
         // Clean-up environment
         rs.close();
         stmt.close();
         conn.close();
      } catch(SQLException se) {
         //Handle errors for JDBC
         se.printStackTrace();
      } catch(Exception e) {
         //Handle errors for Class.forName
         e.printStackTrace();
      } 
    }

     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter(); 
          
        
    }

    
  

}
