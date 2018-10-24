<%-- 
    Document   : newjsp7
    Created on : 18 Oct, 2018, 3:22:57 PM
    Author     : AU003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp7</title>
        <link rel="icon" href="image/find.png" type="image/png"/>
        <style>
            body {
    background-image: url("image/111.jpg");
    background-color: lightblue;
}
        </style>
    </head>
    <body align="center">
        <br><br>
        <h2>Change Password</h2>
        <form action="NewServlet11">
            <br>
            Name:-<input type="text" name="cname" placeholder="Enter Name"/><br><br>
            Old Password:-<input type="password" name="coldpassword" placeholder="Old Password" required/><br><br>
            New Password:-<input type="password" name="cnewpassword" placeholder="New Password" required/><br><br>
             <input type="button" value="Back" onclick="javascript:history.go(-1)">
            <input type="submit" name="Change" value="Change"/>
            <input type="reset" value="RESET" name="RESET" />
        </form>
    </body>
</html>
