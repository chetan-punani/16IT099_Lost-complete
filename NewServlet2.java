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
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet(name = "NewServlet2", urlPatterns={"/NewServlet2"})
@MultipartConfig(fileSizeThreshold=1024*1021*2,//2mb
        maxFileSize = 1024*1024*10,//10mb
        maxRequestSize=1024*1024*50) 
public class NewServlet2 extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       response.setContentType("text/html;charset=UTF-8");
        
         PrintWriter out = response.getWriter();
         int result = 0;
         Part part = request.getPart("image");
        if(part != null){ 
            try {
                
                String username = request.getParameter("username");
                String itemname = request.getParameter("itemname");
                String date = request.getParameter("date");
                String time = request.getParameter("time");
                String typeofitem = request.getParameter("typeofitem");
                String contactnumber = request.getParameter("contactnumber");
                String otherdescription = request.getParameter("otherdescription");
                String email = request.getParameter("email");
            
                 // Register JDBC driver
                 Class.forName("com.mysql.jdbc.Driver");
                 
                // Open a connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple?autoReconnect=true&relaxAutoCommit=true", "root", "");
                
                PreparedStatement pst =(PreparedStatement) conn.prepareStatement("insert into findlost(uname,iname,wtoi,othdis,email,cnumber,image) values(?,?,?,?,?,?,?)");
                // Execute SQL query
                InputStream is = part.getInputStream();
                pst.setString(1,username);  
                pst.setString(2,itemname);        
                pst.setString(3,typeofitem);
                pst.setString(4,otherdescription);
                pst.setString(5,email);
                pst.setString(6,contactnumber);
                pst.setBlob(7, is);
                
                int i = pst.executeUpdate();
                
                conn.commit(); 
                String msg=" ";
                if(i!=0){  
                    msg="Record has been inserted";
                    out.println("<br><br>"+"<font size='6' color=black>" + msg + "</font>");
                    RequestDispatcher dispatcher =   getServletContext().getRequestDispatcher("/newjsp3.jsp");
                    dispatcher.include(request, response);

                }  
                else{  
                    msg="Failed to insert the data";
                    out.println("<br><br>"+"<font size='6' color=black>" + msg + "</font>");
                    RequestDispatcher dispatcher =   getServletContext().getRequestDispatcher("/newjsp3.jsp");
                    dispatcher.include(request, response);
                }  
                pst.close();
          
                conn.close();
            } catch(SQLException | ClassNotFoundException se) {
                //Handle errors for JDBC
                out.println(se);
            }
        }
        else{
        
        }
        //Handle errors for Class.forName
 
    }
}
        
      
        
   

    

