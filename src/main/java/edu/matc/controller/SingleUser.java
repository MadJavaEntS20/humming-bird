package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
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
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        GenericDao<User> dao = new GenericDao<>(User.class);
        GenericDao<Sighting> sightingDao = new GenericDao<>(Sighting.class);
        if (req.getRemoteUser() !=  null) {
            logger.info(req.getRemoteUser());
            logger.info(dao.getByPropertyEqual("userName", req.getRemoteUser()).toString());

            User currentUser = dao.getByPropertyEqual("userName", req.getRemoteUser()).get(0);
            req.setAttribute("user", currentUser);
            req.setAttribute("sightings", currentUser.getSighting());

            logger.info(req.getAttribute("sightings"));
            RequestDispatcher dispatcher = req.getRequestDispatcher("/userPage.jsp");
            dispatcher.forward(req, resp);
        }
    }
}
