import java.io.*;
import java.sql.*;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class NewServlet10 extends HttpServlet {

    
    

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        String userfname = request.getParameter("userfname");
        out.print("userfname");
    /*try{
        Class.forName("com.mysql.jdbc.Driver");
        // Open a connection
        Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple?autoReconnect=true&relaxAutoCommit=true", "root", "");
        out.println("connected..");
        PreparedStatement pst =(PreparedStatement) conn.prepareStatement("select image from findlost where userfname=?");
        pst.setString(1, userfname);
        ResultSet rs = pst.executeQuery();
        if(rs.next()){
            Blob blob = rs.getBlob("image");
            byte byteArray[] = blob.getBytes(1, (int)blob.length());
            response.setContentType("image/png");
            OutputStream os = response.getOutputStream();
            os.write(byteArray);
            os.flush();
            os.close();
        }else{
            out.println("no image found..");
        }
    }catch(Exception e){
        out.println(e);
    }*/
       
    }

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    
}
