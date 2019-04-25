
package BasicBeanPack;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/login")
public class login extends HttpServlet {


 
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String login = (String)request.getParameter("login");
        String password = (String) request.getParameter("password");
        System.out.println(login+ " " + password);
        if("root".equals(login) && "toor".equals(password)){
                response.sendRedirect("PastaServlet?get=show");
            }
            else{
                response.sendRedirect("wrongPass.jsp");
            }
    }

  
}
