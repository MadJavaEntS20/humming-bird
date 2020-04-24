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


@WebServlet(
        name = "removeSightingResults",
        urlPatterns = { "/removeSightingResults" }
)

public class RemoveSightingResults extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        GenericDao<Sighting> dao = new GenericDao<>(Sighting.class);
        int idOfSighting = Integer.parseInt(request.getParameter("id"));
        Sighting sighting = dao.getById(idOfSighting);
//        logger.info("id of sighting: " +  idOfSighting + " sighting: " + sighting.toString());
        dao.delete(sighting);
        response.sendRedirect("removeSightingResultsServlet");
    }
}
