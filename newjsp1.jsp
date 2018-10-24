<%-- 
    Document   : newjsp1
    Created on : 7 Sep, 2018, 7:33:38 PM
    Author     : AU003
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>newjsp1</title>
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
        <form action="home.jsp">
            <button id="b">Logout</button>
        </form>
        
        <%--<p>Attribute is:${param.yourname} ${param.itemname} ${param.typeofitem}  ${param.description}  ${param.allvalues}</p>
        --%>
        <c:choose>
            <c:when test="${param.yourname=='button1'}">
                <form action="NewServlet3" align="center" method="post">
                    <h1>Find Item</h1>
                    Your Name :- <input type="text" name="userfname" value="" size="50" placeholder="Enter Name" required/>
                    
                    <br><br>
                    <input type="button" value="Back" onclick="javascript:history.go(-1)">
                    <input type="submit" value="SEARCH" name="SEARCH" />
                    <input type="reset" value="RESET" name="RESET" />
                   <%-- <jsp:include page="/NewServlet3">
                        <jsp:param name="b" value="button1"/>
                    </jsp:include>--%>
                   
                   
                </form>
                
               
            </c:when>
            
            <c:when test="${param.itemname=='button2'}">
                <form action="NewServlet5" align="center">
                    <h1>Find Item</h1>
                    Item Name :- <input type="text" name="itemfname" value="" size="50" placeholder="Enter Item Name" required/>
                    <br><br>
                    <input type="button" value="Back" onclick="javascript:history.go(-1)">
                    <input type="submit" value="SEARCH" name="SEARCH" />
                    <input type="reset" value="RESET" name="RESET" />
                </form>
                <%--<jsp:include page="/NewServlet3">
                    <jsp:param name="b" value="button2"/>
                </jsp:include>--%>
            </c:when>
            
            <c:when test="${param.typeofitem=='button3'}">
                <form action="NewServlet7" align="center">
                    <h1>Find Item</h1>
                     which type of item :- <input type="text" name="ftypeofitem" value="" size="50" placeholder="Enter which type of item" required/>
                    <br><br>
                    <input type="button" value="Back" onclick="javascript:history.go(-1)">
                    <input type="submit" value="SEARCH" name="SEARCH" />
                    <input type="reset" value="RESET" name="RESET" />
                </form>
              <%-- <jsp:include page="/NewServlet3">
                    <jsp:param name="b" value="button3"/>
                </jsp:include>--%>
            </c:when>
            
            <c:when test="${param.description=='button4'}">
                <form action="NewServlet6" align="center">
                    <h1>Find Item</h1>
                    Description:- <textarea name="fothdis" row="20" cols="40" placeholder="Enter Description" required></textarea>
                    <br><br>
                    <input type="button" value="Back" onclick="javascript:history.go(-1)">
                    <input type="submit" value="SEARCH" name="SEARCH" />
                    <input type="reset" value="RESET" name="RESET" />
                </form>
                <%-- <jsp:include page="/NewServlet3">
                    <jsp:param name="b" value="button4"/>
                </jsp:include>--%>
            </c:when>
            
            <c:when test="${param.allvalues=='button5'}">
                <form action="NewServlet8"  align="center">
                    <h1>Find Item</h1>
                    Your Name :- <input type="text" name="userfname" value="" size="50" placeholder="Enter Name" required/>
                    <br><br>
                    Item Name :- <input type="text" name="itemfname" value="" size="50" placeholder="Enter Item Name" required/>
                    <br><br> 
                    Date :-<input type="date" name="fdate" placeholder="Date"/>
                    <br><br>
                    Time :-<input type="time" name="ftime" placeholder="Time"/>
                    <br><br>
                    which type of item :- <input type="text" name="ftypeofitem" value="" size="50" placeholder="Enter which tyoe of item" required/>
                    <br><br>
                    Contact Number : <input type="text" name="fcontactnumber" value="" size="20" placeholder="Enter Contact Number" required/>
                    <br><br>
                    Email :- <input type="email" name="femail" value="" size="20" placeholder="Enter Email" required/>
                    <br><br>
                    Other Description:- <textarea name="fothdis" row="20" cols="40" placeholder="Other Description"></textarea>
                    <br><br>
                    
                    <input type="button" value="Back" onclick="javascript:history.go(-1)">
                    <input type="submit" value="SEARCH" name="SEARCH" />
                    <input type="reset" value="RESET" name="RESET" />
                </form>
                <%--<jsp:include page="/NewServlet3">
                    <jsp:param name="b" value="button5"/>
                </jsp:include>--%>
            </c:when>
            
            <c:when test="${param.image=='button6'}">
                <form action="newjsp6.jsp" align="center">
                    <h1>Find Item</h1>
                     Your Name :- <input type="text" name="userfname" value="" size="50" placeholder="Enter Name" required/>
                    <br><br>
                    Item Name :- <input type="text" name="itemfname" value="" size="50" placeholder="Enter Item Name" required/>
                    <br><br> 
                    which type of item :- <input type="text" name="ftypeofitem" value="" size="50" placeholder="Enter which tyoe of item" required/>
                    <br><br>
                    Contact Number : <input type="text" name="fcontactnumber" value="" size="20" placeholder="Enter Contact Number" required/>
                    <br><br>
                    Email :- <input type="email" name="femail" value="" size="20" placeholder="Enter Email" required/>
                    <br><br>
                    Other Description:- <textarea name="fothdis" row="20" cols="40" placeholder="Other Description"></textarea>
                    <br><br>
                    <input type="button" value="Back" onclick="javascript:history.go(-1)">
                    <input type="submit" value="SEARCH" name="SEARCH" />
                    <input type="reset" value="RESET" name="RESET" />
                </form>
                <%--<jsp:include page="/NewServlet3">
                    <jsp:param name="b" value="button2"/>
                </jsp:include>--%>
            </c:when>
            
            
        </c:choose>
    </body>
</html>
