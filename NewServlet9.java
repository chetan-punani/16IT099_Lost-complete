import java.io.*;
import java.sql.*;
import javax.servlet.*;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NewServlet9 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        
         PrintWriter out = response.getWriter();
         
        try{
            
            String suname = request.getParameter("suname");
            String spassword = request.getParameter("spassword");
            String srpassword = request.getParameter("srpassword");
          
            // Register JDBC driver
            Class.forName("com.mysql.jdbc.Driver");

            // Open a connection
            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple?autoReconnect=true&relaxAutoCommit=true", "root", "");
            
            
                if(spassword.equals(srpassword)){
                    PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into login(name,password) values(?,?)");
                    // Execute SQL query
                    pst.setString(1,suname);  
                    pst.setString(2,spassword);        
          
        
                    int i = pst.executeUpdate();
                    conn.commit(); 
                    String msg=" ";
                    if(i!=0){  
                        msg="Sign Up Successfully";
                        out.println("<font size='6' color=black>" + msg + "</font>");
                        RequestDispatcher dispatcher =   getServletContext().getRequestDispatcher("/newjsp.jsp");
                        dispatcher.include(request, response);
                        
                    }  
                    else{  
                        msg="Sign Up Failed";
                        out.println("<font size='6' color=black>" + msg + "</font>");
                        RequestDispatcher dispatcher =   getServletContext().getRequestDispatcher("/newjsp3.jsp");
                        dispatcher.include(request, response);
                    }  
            
                    pst.close();
                }
                
                else{
                    out.println("Password and Conform Password are Different.");
                }
          
             conn.close();
      } catch(SQLException | ClassNotFoundException se) {
           //Handle errors for JDBC
            out.println(se);
      }
        //Handle errors for Class.forName
 
    }
}
        
      
        
   

    

