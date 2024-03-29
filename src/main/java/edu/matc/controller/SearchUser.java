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
 * A simple servlet to search for users
 * @author emullendore
 */

@WebServlet(
        name = "searchUser",
        urlPatterns = {"/searchUser"}
)

    public class SearchUser extends HttpServlet {
        @Override
        protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
            GenericDao<User> dao = new GenericDao<>(User.class);
            if (req.getParameter("submit").equals("search")) {
                req.setAttribute("users", dao.getByPropertyLike("userName", req.getParameter("searchTerm")));
            } else {
                req.setAttribute("users", dao.getAll());
            }
            RequestDispatcher dispatcher = req.getRequestDispatcher("/results.jsp");
            dispatcher.forward(req, resp);
        }
    }
