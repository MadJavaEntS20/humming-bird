package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import java.io.IOException;

/**
 * A simple servlet to welcome the user.
 * @author emullendore
 */

@WebServlet(
        name = "results",
        urlPatterns = {"/results"}
)

public class AllUsers extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        GenericDao<User> userDao = new GenericDao<>(User.class);
//        req.setAttribute("users", userDao.getAll());
//        String lastNameParam = req.getParameter("lastName");
//        req.setAttribute("users", userDao.getByPropertyLike("userName", lastNameParam));
        RequestDispatcher dispatcher = req.getRequestDispatcher("/confirmation.jsp");
        dispatcher.forward(req, resp);
    }
}