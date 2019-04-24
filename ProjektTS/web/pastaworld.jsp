<%@page import="java.util.List"%>
<%@page import="BasicBeanPack.PastaRecipe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pasta is fun</title>
    </head>
    <body>
        <h1>Recipe List:</h1>
        <table style="width:50%" border="1">
            
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Ingredients</th>
                <th>Preparation</th>
                <th>Amount of servings</th>
                <th>Time in minutes</th>
            </tr>
            
                <c:forEach var="pastarecipe" items="${pastaList}">
              
              <tr>
                  <td><c:out value="${pastarecipe.dishID}"/></td>
                  <td><c:out value="${pastarecipe.dishName}"/></td>
                  <td><c:out value="${pastarecipe.dishIngredients}"/></td>
                  <td><c:out value="${pastarecipe.dishPreparation}"/></td>
                  <td><c:out value="${pastarecipe.dishPortion}"/></td>
                  <td><c:out value="${pastarecipe.dishTime}"/></td>

                  
              </tr>
              </c:forEach>
            </table>
            <form action="PastaServlet" method="post">
                <br>
                <br>
                Index <input type="text" name="DishID">
                <br>
                <br>
                Dish Name <input type="text" name="DishName">
                <br>
                <br>
                Ingredients <input type="text" name="DishIngredients">
                <br>
                <br>
                Preparation  <input type="text" name="DishMaking">
                <br>
                <br>
                Portions  <input type="text" name="DishPortions">
                <br>
                <br>
                Time in minutes <input type="text" name="DishTime">
                <br>
                <br>
                <input type="radio" name="operation" value="Add">Add
                <br>
                <input type="radio" name="operation" value="Remove">Remove
                <br>
                <input type="radio" name="operation" value="Edit">Edit
                <br>
                <input type="submit" value="Go">
            </form>
        
    </body>
</html>
