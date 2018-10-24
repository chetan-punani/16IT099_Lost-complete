<%-- 
    Document   : newjsp2
    Created on : 27 Sep, 2018, 12:57:36 PM
    Author     : AU003
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>  
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp2</title>
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
        
         
         
        <form  action="NewServlet2" align="center" enctype="multipart/form-data" method="post">
            <h1>Lost Item</h1>
            Your Name :- <input type="text" name="username" value="" size="50" placeholder="Enter Name" required/>
            <br><br>
            Item Name :- <input type="text" name="itemname" value="" size="50" placeholder="Enter Item Name" required/>
            <br><br>
            Date :-<input type="date" name="date" placeholder="Date"/>
            <br><br>
            Time :-<input type="time" name="time" placeholder="Time"/>
            <br><br>
            which type of item :- <input type="text" name="typeofitem" value="" size="50" placeholder="Which type of item" required/>
            <br><br>
            Contact Number :- <input type="text" name="contactnumber" value="" size="20" placeholder="Enter Contact Number" required/>
            <br><br>
            Email :- <input type="email" name="email" value="" size="20" placeholder="Enter Email" required/>
            <br><br>
            Other Description :- <input type="text" name="otherdescription" value="" size="50" placeholder="Other Description" required/>
            <br><br>
            Image :- <input type="file" name="image">
            <br><br>
            <input type="button" value="Back" onclick="javascript:history.go(-1)">
            <input type="submit" value="SU BMIT" name="SUBMIT" />
            <input type="reset" value="RESET" name="RESET" />
        </form>
        
        <form action="home.jsp">
            <button id="b">Logout</button>
        </form>
    </body>
</html>
