<%-- 
    Document   : shoppingList
    Created on : Oct 12, 2017, 9:20:51 AM
    Author     : NoahFerrier
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Shopping List</title>
    </head>
    <body>
        <h1>Shopping List</h1><br>
        <form action="" method="get">
            <input type="hidden" name="action" value="logout"> 
        Hello ${user}, <a href="ShoppingList?action=logout">Logout</a> 
        </form><br><br>
        <h1>List</h1><br>
        <form action="" method="post">
            <input type="hidden" name="action" value="add">
        Add item:<input type="text" name="item">
        <input type="submit" value="add">
        </form><br>
        <form action="" method="post">
        <c:forEach var="list" items="${items}">
        <tr>
            <td>${list}</td>
            <td><input type="radio" name="item" value="${list}"></td><br>
        </tr>
        </c:forEach>
            <input type="hidden" name="action" value ="delete">
        <br><input type="submit" value="delete">
        </form>
    </body>
</html>
