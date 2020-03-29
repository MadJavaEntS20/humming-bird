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
        name = "singleUser",
        urlPatterns = {"/singleUser"}
)

public class SingleUser extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GenericDao<User> dao = new GenericDao<>(User.class);
        if (req.getRemoteUser() !=  null) {
            req.setAttribute("user", dao.getByPropertyLike("userName", req.getRemoteUser()).get(0));
            req.setAttribute("sightings", dao.getByPropertyLike("userName", req.getRemoteUser()).get(0).getSighting());
        }
        RequestDispatcher dispatcher = req.getRequestDispatcher("/userPage.jsp");
        dispatcher.forward(req, resp);
    }
}
