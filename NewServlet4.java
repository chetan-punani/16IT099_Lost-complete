
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
public class NewServlet4 extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        if(request.getParameter("allvalues")!=null) {
            
            out.println("Press allvalues");
            request.setAttribute("allvalues","all");
            request.getRequestDispatcher("/newjsp1.jsp").forward(request, response);
           
            
        } 
        else if(request.getParameter("itemname")!=null){
            
            out.println("Press iteamname");
            request.setAttribute("itemname","item");
          request.getRequestDispatcher("/newjsp1.jsp").forward(request, response);
    
        }
        else if(request.getParameter("typeofitem")!=null){
            
            out.println("Press typeofitem");
            request.setAttribute("typeofitem","type");
          request.getRequestDispatcher("/newjsp1.jsp").forward(request, response);
    
        }
        else if(request.getParameter("description")!=null){
            
            out.println("Press description");
            request.setAttribute("description","des");
          request.getRequestDispatcher("/newjsp1.jsp").forward(request, response);
    
        }
        else if(request.getParameter("yourname")!=null){
            
            out.println("Press yourname");
            request.setAttribute("yourname","your");
          request.getRequestDispatcher("/newjsp1.jsp").forward(request, response);
    
        }
        else if(request.getParameter("image")!=null){
            
            out.println("Press image");
            request.setAttribute("image","image");
          request.getRequestDispatcher("/newjsp1.jsp").forward(request, response);
    
        }
        
    }  
}
