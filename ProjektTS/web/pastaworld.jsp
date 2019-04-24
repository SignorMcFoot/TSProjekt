<%@page import="java.util.List"%>
<%@page import="BasicBeanPack.PastaRecipe"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Pasta is fun</title>
        <LINK href="css/styles.css" rel="stylesheet" type="text/css">
    </head>
    <body>
            <c:forEach var="pastarecipe" items="${pastaList}">
            <div class="recipe-card">
              <div class="recipe-text">
                <span><b>ID:</b><c:out value="${pastarecipe.dishID}"/></span>
                <span><b>Dish:</b><c:out value="${pastarecipe.dishName}"/></span>
                <span><b>Ingredients:</b><c:out value="${pastarecipe.dishIngredients}"/></span>
                <span><b>Preparation:</b><c:out value="${pastarecipe.dishPreparation}"/></span>
                <span><b>Amount of servings:</b><c:out value="${pastarecipe.dishPortions}"/></span>
                <span>Time:<c:out value="${pastarecipe.dishTime}"/></span>
              </div>
              <div class="recipe-image">
                <img src="${pastarecipe.dishImage}" alt="dish-pic" />
              </div>
            </div>
            </c:forEach>
            <form action="PastaServlet" method="post">
                <div class="formWrapper">
                <div class="inputName">
                    <span>Index</span>
                    <span>Dish Name</span>
                    <span>Ingredients</span>
                    <span>Preparation</span>
                    <span>Portions</span>
                    <span>Time</span>
                    <span>Image URL</span>
                </div>
                <div class="inputs">
                     <input type="text" name="DishID">
                     <input type="text" name="DishName">
                     <input type="text" name="DishIngredients">
                     <input type="text" name="DishMaking">
                     <input type="text" name="DishPortions">
                     <input type="text" name="DishTime">
                     <input type="text" name="DishImage">
                </div>
                </div>

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