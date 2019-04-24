/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package BasicBeanPack;

import BasicBeanPack.PastaRecipe;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/PastaServlet")
public class PastaServlet extends HttpServlet {

    List<PastaRecipe> pastaList = new ArrayList<>();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String param = request.getParameter("get");
        if ("show".equals(param)) {
            try {
                List<PastaRecipe> pastaList = pastaList();
                request.setAttribute("pastaList", pastaList);
                request.getRequestDispatcher("pastaworld.jsp").forward(request, response);
            } catch (SQLException | ClassNotFoundException ex) {
                Logger.getLogger(PastaServlet.class.getName()).log(Level.SEVERE, null, ex);
            }
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        if (pastaList != null) {
            String id = request.getParameter("DishID");
            String name = request.getParameter("DishName");
            String ingredients = request.getParameter("DishIngredients");
            String prep = request.getParameter("DishMaking");
            String operation = request.getParameter("operation");
            String portions = request.getParameter("DishPortions");
            String time = request.getParameter("DishTime");
            PastaRecipe recipe = createPastaRecipe(name,id,ingredients,prep,portions,time);
            if (recipe != null) {
                switch (operation) {
                    case "Add":
                        String sqlQuery = ("INSERT INTO recipes(DishName,DishID,DishIngredients,DishMaking,DishTime,DishPortions) values('" + name + "','" + id + "','" + ingredients + "','" + prep + "','" + time + "'," + portions + ")");
                        try {
                            execQuery(sqlQuery);
                        } catch (SQLException ex) {
                            Logger.getLogger(PastaServlet.class.getName()).log(Level.SEVERE, null, ex);
                        }

                        break;
                    case "Remove":
                        String sqlQuery1 = ("DELETE FROM recipes WHERE id = " + id);

                        try {
                            execQuery(sqlQuery1);
                        } catch (SQLException ex) {
                            Logger.getLogger(PastaServlet.class.getName()).log(Level.SEVERE, null, ex);
                        }

                        break;
                    case "Edit":
                        String sqlQuery2 = ("UPDATE recipes SET DishName = '"+ name+"', DishIngredients = '"+ingredients+"', DishMaking ='"+prep+"',DishTime ='"+ time +",DishPortions = '"+portions+"' where id = '" + id+"'");
                
                        try {
                            execQuery(sqlQuery2);
                        } catch (SQLException ex) {
                            Logger.getLogger(PastaServlet.class.getName()).log(Level.SEVERE, null, ex);
                        }
                
                        break;
                }
            }
            response.sendRedirect("PastaServlet?get=show");
        }
    }

    private PastaRecipe createPastaRecipe(String id, String name, String ingredients, String making, String portions, String time) {
        if (id != null && name != null && ingredients != null && making != null && portions != null && time != null) {
            PastaRecipe recipe = new PastaRecipe(name,id,ingredients,making,portions,time);
            return recipe;
        }
        return null;
    }

    private List<PastaRecipe> pastaList() throws SQLException, ClassNotFoundException {
        List<PastaRecipe> pastaList = null;
        final String sqlQuery = "SELECT * FROM recipes";
        try (Connection conn = DbUtil.getInstance().getConnection();
                Statement statement = conn.createStatement();
                ResultSet resultSet = statement.executeQuery(sqlQuery);) {
            pastaList = new ArrayList<>();
            while (resultSet.next()) {
                String id = resultSet.getString("DishID");
                String name = resultSet.getString("DishName");
                String ingredients = resultSet.getString("DishIngredients");
                String prep = resultSet.getString("DishMaking");
                String portions = resultSet.getString("DishPortions");
                String time = resultSet.getString("DishTime");
                PastaRecipe recipe = new PastaRecipe(name,id,ingredients,prep,portions,time);
                pastaList.add(recipe);
            }
        }

        return pastaList;
    }

    private void execQuery(String sqlQuery) throws SQLException {
        try (Connection conn = DbUtil.getInstance().getConnection();
                Statement statement = conn.createStatement();) {
            statement.executeUpdate(sqlQuery);

        }
    }
}
