<%-- 
    Document   : newjsp
    Created on : 7 Sep, 2018, 7:20:57 PM
    Author     : AU003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp</title>
        <link rel="icon" href="image/find.png" type="image/png"/>
        <style type="text/css">
            body{
                background-image: url("image/111.jpg");
            }
            
            .divTable
            {
                display:  table;
                width:auto;
                border-spacing:5px;/*cellspacing:poor IE support for  this*/
                /* border-collapse:separate;*/
            }

            .divRow
            {
                display:table-row;
                width:auto;
            }

            .divCell
            {
                float:left;/*fix for  buggy browsers*/
                display:table-column;
                width:200px;
       
            }
    
            
            #b{
                position: absolute;
                top: 50px;
                right: 70px;
            }
        
        </style>
    </head>
    
    <body align="center">
        <form action="NewServlet1" align="center" >
            <br><br><br>
            <input type="submit" value="Find Something" name="find" style="margin-right:50px;" />
            <input type="submit" value="Lost Something" name="lost" />
            <br><br>
            
        </form>
        
        <form action="home.jsp" style="align-content: top-right;">
            <button >Logout</button>
        </form>
    </body>
</html>
