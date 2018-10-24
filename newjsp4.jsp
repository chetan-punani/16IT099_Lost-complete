<%-- 
    Document   : newjsp4
    Created on : 14 Oct, 2018, 10:49:13 AM
    Author     : AU003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp4</title>
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
        </style>
    </head>
    <body>
        <form action="NewServlet4" align="center" >
           
            <h1>Find Item</h1>
            <h3>Which type of search you perform</h3> <br><br>
            <button name="yourname" value="button1">Search By your Your Name</button> <br><br>
            <button name="itemname" value="button2">Search By your Item Name</button> <br><br>
            <button name="typeofitem" value="button3">Search By Type of item</button> <br><br>
            <button name="description" value="button4">Search By Description</button> <br><br>
            <button name="allvalues" value="button5">Search By All Values</button> <br><br>
            <button name="image" value="button6">Search Image</button> <br><br>
            <input type="button" value="Back" onclick="javascript:history.go(-1)"> <br>
        </form>
        
        <form action="home.jsp" style="align-content: top-right;">
            <button id="b">Logout</button>
        </form>
    </body>
</html>
