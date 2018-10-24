
import java.io.File; 
import java.io.IOException; 
import java.io.PrintWriter; 
import java.util.*; 
import java.io.*; 
import java.net.*; 
import javax.servlet.RequestDispatcher;

import javax.servlet.ServletException; 
import javax.servlet.http.HttpServlet; 
import javax.servlet.http.HttpServletRequest; 
import javax.servlet.http.HttpServletResponse;  
/**
 *
 * @author AU003
 */
public class NewServlet1 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        if(request.getParameter("find")!=null) {
            
            out.println("find press");
            request.getRequestDispatcher("/newjsp4.jsp").forward(request, response);
           
            
        } else if(request.getParameter("lost")!=null){
            
            out.println("lost press");
          request.getRequestDispatcher("/newjsp2.jsp").forward(request, response);
    
        }
        
    }  
}
