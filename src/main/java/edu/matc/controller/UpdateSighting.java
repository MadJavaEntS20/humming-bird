package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.persistence.GenericDao;
import lombok.SneakyThrows;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URL;
import java.util.Date;

import static edu.matc.controller.createSighting.formatDate;
import static edu.matc.controller.createSighting.formatCoords;

/**
 * UpdateSighting servlet that will redirect to either the searchUser or singleUser page
 */
@WebServlet (
        name = "updateSighting",
        urlPatterns = { "/updateSighting" }
)

public class UpdateSighting extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    private GenericDao<Sighting> sightingDao = new GenericDao<>(Sighting.class);
    private String redirectUrl;
    private Boolean fromSingleUser;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Depending on the referer value of get header, do Post will redirect either back to searchUser or singleUser
        URL baseUrl = new URL(request.getHeader("referer"));
        redirectUrl = baseUrl.getPath().replace("/fluttr/", "");;
        fromSingleUser = true;
        if (redirectUrl.equals("searchUser")) {
            redirectUrl += "?" + baseUrl.getQuery();
            fromSingleUser = false;
        }
        sightingDao = new GenericDao<>(Sighting.class);
        int idOfSighting = Integer.parseInt(request.getParameter("id"));
        Sighting sighting = sightingDao.getById(idOfSighting);
        request.setAttribute("sightingToUpdate", sighting);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/addSighting.jsp");
        dispatcher.forward(request,response);
    }

    @SneakyThrows
    public void doPost(HttpServletRequest request, HttpServletResponse response) {

        int id = Integer.parseInt(request.getParameter("id"));
        Sighting updatedSighting = sightingDao.getById(id);
        Date date = formatDate(request);
        updatedSighting.setDateTime(date);

        float longitude = formatCoords(request)[0];
        float latitude = formatCoords(request)[1];

        updatedSighting.setLatitude(latitude);
        updatedSighting.setLongitude(longitude);
        updatedSighting.setSpecies(request.getParameter("species"));
//        logger.info("updatedSighting" + updatedSighting);

        if (fromSingleUser) {
            if (updatedSighting.getUser().getUserName().equals(request.getRemoteUser()))  {
                sightingDao.saveOrUpdate(updatedSighting);
                response.sendRedirect(redirectUrl);
            } else {
                request.getRequestDispatcher("/addSighting.jsp").forward(request, response);
            }
        } else {
            sightingDao.saveOrUpdate(updatedSighting);
            response.sendRedirect(redirectUrl);
        }
    }
}
