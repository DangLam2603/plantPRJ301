<%-- 
    Document   : header
    Created on : Aug 1, 2022, 4:35:48 PM
    Author     : Legion
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="mycss.css" type="text/css">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    </head>
    <body>
        <header>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <ul>
                    <li><a href="index.jsp"><img src="images/pngegg.png" id="logo"></a></li>
                    <li><a href="index.jsp">Home</a></li>
                        <c:choose>
                            <c:when test="${sessionScope.user == null}">
                            <li><a href="registration.jsp">Register</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            </c:when>
                            <c:when test="${sessionScope.user != null}">
                            <li><a href="personalPage.jsp">Personal Page</a></li>
                            </c:when>
                        </c:choose>
                    <li><a href="mainController?action=viewCart">View Cart</a></li>
                    <li><form action="mainController" method="get">
                            <input type="text" name="txtsearch" value="${param.txtsearch}" placeholder="search plant">
                            <select  name="searchby">
                                <option disabled selected value>select option</option>
                                <option value="byname" ${param.searchby == 'byname'? 'selected':''}>By Name</option>
                                <option value="bycate" ${param.searchby == 'bycate'? 'selected':''}>By Category</option>
                            </select>
                            <input class="btn btn-outline-success my-2 my-sm-0" type="submit" name="action" value="search">
                        </form> 
                    </li>
                </ul>
            </nav>
        </header>
    </body>
</html>
