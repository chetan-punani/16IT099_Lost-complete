<%-- 
    Document   : newjsp3
    Created on : 10 Oct, 2018, 9:22:17 PM
    Author     : AU003
--%>



<%@page import="java.lang.String"%>
<%@page import="java.sql.*"%>
<%@page import="java.io.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp3</title>
        <link rel="icon" href="image/find.png" type="image/png"/>
        <style>
            body {
                background-image: url("image/111.jpg");
                background-color: lightblue;
            }
            
            #b{
                position: absolute;
                top: 50px;
                right: 70px;
            }

            .a{
                position: absolute;
                top: 50px;
                left: 70px;
            }
        </style>
    </head>
    <body align="center">
        
       
        <%--
        <%
                String name = (String)request.getAttribute("uname");
                out.println("name:"+ name);
                out.println("<br/>");
                out.println("---------------------------------------------------");
                
                
                //request.getRequestDispatcher("/newjsp6.jsp").include(request, response);
                
                
                
%><script type="text/javascript">
            function page(){
                window.location.href =;
            }
        </script>
       
        <%
             /*    
            
            if(x.equals("confirm")){
                request.setAttribute("uname", name);
                request.getRequestDispatcher("/newjsp6.jsp").include(request, response);
            }
            else{
                out.println("error");
            }*/
        %> <%!
            String str = "param";
            %>
            <c:set var="uname" value="pp"/>
            <jsp:include page="newjsp6.jsp">
            <jsp:param name="uname" value="${param.uname}" />
            </jsp:include> 
            <%
                
        %>
        
        
       
        
        <% 
            String x = request.getParameter("submit");
            if(x.equals("confirm")){
            String name = (String)request.getAttribute("uname");
            //out.print("name:"+ name);
            try{
                Class.forName("com.mysql.jdbc.Driver");
                // Open a connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple?autoReconnect=true&relaxAutoCommit=true", "root", "");
                out.println("connected..");
                PreparedStatement pst =(PreparedStatement) conn.prepareStatement("select image from findlost where uname=?");
                pst.setString(1, name);
                ResultSet rs = pst.executeQuery();
                if(rs.next()){
                    Blob blob = rs.getBlob("image");
                    byte byteArray[] = blob.getBytes(1, (int)blob.length());
                    response.setContentType("image/png");
                    OutputStream os = response.getOutputStream();
                    os.write(byteArray);
                    os.flush();
                    os.close();
            
                }
                else{
                    out.println("no image found..");
                }
            }catch(Exception e){
                out.println(e);
            }
            }
            else{
                out.println("please click view button..if image show");
            }
        %>--%>
        
        <form action="home.jsp">
            <button id="b">Logout</button>
            <input type="button" value="Back" onclick="javascript:history.go(-1)" class="a">
        </form>
        
        
    </body>
    
</html>
