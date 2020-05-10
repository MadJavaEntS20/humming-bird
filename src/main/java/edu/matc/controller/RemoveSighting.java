package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.persistence.GenericDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * RemoveSighting servlet
 * @author emullendore
 */
@WebServlet (
        name = "removeSighting",
        urlPatterns = { "/removeSighting" }
)

public class RemoveSighting extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        GenericDao<Sighting> dao = new GenericDao<>(Sighting.class);
        int idOfSighting = Integer.parseInt(request.getParameter("id"));
        String previousPage = request.getParameter("pageName");
        Sighting sighting = dao.getById(idOfSighting);
//        logger.info("id of sighting: " +  idOfSighting + " sighting: " + sighting.toString());
        dao.delete(sighting);
        if (previousPage.equals("results")) {
            response.sendRedirect("removeSightingResultsServlet");
        } else {
            response.sendRedirect("removeSightingServlet");
        }
    }
}
