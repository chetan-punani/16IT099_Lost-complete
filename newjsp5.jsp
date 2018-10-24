<%-- 
    Document   : newjsp5
    Created on : 14 Oct, 2018, 3:46:31 PM
    Author     : AU003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp5</title>
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
    <body align="center">
        <h1>Find App</h1>
        <form action="NewServlet9" >
            <h3>Sign Up</h3>
            Your Name:-
            <input type="text" name="suname" value="" size="20" placeholder="Enter Name or Email" required/><br><br>
            Password:-
            <input type="password" name="spassword" value="" size="20" placeholder="Enter Password" required/><br><br>
            Conform Password:-
            <input type="password" name="srpassword" value="" size="20" placeholder="ReEnter Password" required/><br><br>
            <input type="button" value="Back" onclick="javascript:history.go(-1)">
            <input type="submit" value="OK" name="OK"/>
            <input type="reset" value="RESET" name="RESET" />
        </form>
        
        <form action="home.jsp" style="align-content: top-right;">
            <button id="b">Logout</button>
        </form>
    </body>
</html>
