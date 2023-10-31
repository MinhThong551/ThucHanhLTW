package controller;
import entities.Account;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
@WebServlet(name = "/TH5_war", value = "/login")
public class LoginController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/home.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");

        List<Account> accountList = new ArrayList<>();
        Account account1 = new Account("toiTenla", "pass  ","toitenla@gmail.com");
        Account account2 = new Account("zsfa", "123aa","asda@gmail.com");
        Account account3 = new Account("fffff", "qqqqq","qqqq@gmail.com");

        accountList.add(account1);
        accountList.add(account2);
        accountList.add(account3);
        for (Account a : accountList) {
            if ((a.getName().equals(username) || (a.getEmail().equals(username))) && a.getPassword().equals(password)) {
                request.setAttribute("user",username);
                RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/home.jsp");
                dispatcher.forward(request,response);
            }
        }
        request.setAttribute("user",username);
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/views/login.jsp");
        dispatcher.forward(request,response);

    }
    }
