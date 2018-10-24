<%-- 
    Document   : newjsp6
    Created on : 17 Oct, 2018, 10:40:08 PM
    Author     : AU003
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="java.sql.Blob"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp6</title>
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
        
        <% 
            
            
            String userfname = request.getParameter("userfname");
            String itemfname = request.getParameter("itemfname");
            String ftypeofitem = request.getParameter("ftypeofitem");
            String fothdis = request.getParameter("fothdis");
            String femail = request.getParameter("femail");
            String fcontactnumber = request.getParameter("fcontactnumber");
            
            
            try{
                Class.forName("com.mysql.jdbc.Driver");
                // Open a connection
                Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/simple?autoReconnect=true&relaxAutoCommit=true", "root", "");
                
                PreparedStatement pst =(PreparedStatement) conn.prepareStatement("select image from findlost where uname=? && iname=? && wtoi=? && othdis=? && email=? && cnumber=?");
                pst.setString(1, userfname);
                pst.setString(2, itemfname);
                pst.setString(3, ftypeofitem);
                pst.setString(4, fothdis);
                pst.setString(5, femail);
                pst.setString(6, fcontactnumber);
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
                    
                    
                    String msg="Sorry!..Image Not Found based on ";
                    String m = " or ";
                    out.println("<br><br>"+"<font size='6' color=blue>"+ msg +"<font color=red>" +userfname +"</font>"+ m +"<font color=red >"+itemfname +"</font>"+ m+"<br>"+"<font color=red >"+ ftypeofitem +"</font>"+m+"<font color=red>"+ fothdis +"</font>"+m +"<font color=red>"+femail + "</font>"+m+"<font color=red>"+ fcontactnumber +"</font>"+"</font>");
                    
                }
            }catch(Exception e){
                out.println(e);
            }
            
        %>
        <form action="home.jsp" style="align-content: top-right;">
            <button id="b">Logout</button>
            <input type="button" value="Back" onclick="javascript:history.go(-1)" class="a">
        </form>
        
        
    </body>
</html>
