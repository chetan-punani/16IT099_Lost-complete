
import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import java.sql.*;


public class NewServlet extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        
    }

   
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         PrintWriter out = response.getWriter();
        try {
         // Register JDBC driver
         Class.forName("com.mysql.jdbc.Driver");

         // Open a connection
         Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple", "root", "");
           
         // Execute SQL query
         Statement stmt = conn.createStatement();
         String sql;
         sql = "SELECT * FROM login";
         ResultSet rs = stmt.executeQuery(sql);
         int a=0;
         // Extract data from result set
         while(rs.next()){
             
            //Retrieve by column name
            String unamed = rs.getString("name");
            String passwordd = rs.getString("password");
             String unamef = request.getParameter("uname");
        String passwordf = request.getParameter("password");
       
        if(unamef.equals(unamed) && passwordf.equals(passwordd)){
            a=1;
           
           String msg="Welcome ";
           out.println("<br><br>"+"<font size='6' color=black>" + msg + unamed +"</font>");
           request.getRequestDispatcher("/newjsp.jsp").include(request, response);
        }  
         }
          if(a==0){
            
            request.getRequestDispatcher("/home.jsp").include(request, response);
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
      } /*finally {
         //finally block used to close resources
         try {
            if(stmt!=null)
               stmt.close();
         } catch(SQLException se2) {
         } // nothing we can do
         try {
            if(conn!=null)
            conn.close();
         } catch(SQLException se) {
            se.printStackTrace();
         } //end finally try*/
        
      } 
        
       
        
    }




