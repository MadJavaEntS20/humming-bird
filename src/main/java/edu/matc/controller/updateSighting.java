package edu.matc.controller;

import edu.matc.entity.Sighting;
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
import java.net.URL;
import java.util.Date;

import static edu.matc.controller.AddSighting.getCoords;
import static edu.matc.controller.AddSighting.getDate;

@WebServlet (
        name = "updateSighting",
        urlPatterns = { "/updateSighting" }
)

public class updateSighting extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    private GenericDao<Sighting> sightingDao = new GenericDao<>(Sighting.class);
    private String redirectUrl;
    private Boolean fromSingleUser;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Trying to refactor here and not have duplicate code, depending on the referer value of get header,
        // do Post will redirect either back to searchUser or singleUser
        URL baseUrl = new URL(request.getHeader("referer"));
        redirectUrl = baseUrl.getPath();
        fromSingleUser = true;
        if (redirectUrl.equals("/fluttr/searchUser")) {
            redirectUrl += "?" + baseUrl.getQuery();
            fromSingleUser = false;
        }
//        logger.info("doGet previousPath " + redirectUrl);

        sightingDao = new GenericDao<>(Sighting.class);
        int idOfSighting = Integer.parseInt(request.getParameter("id"));
        Sighting sighting = sightingDao.getById(idOfSighting);
//        logger.info("id of sighting: " +  idOfSighting + " sighting: " + sighting.toString());
        request.setAttribute("sightingToUpdate", sighting);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/addSighting.jsp");
        dispatcher.forward(request,response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

        int id = Integer.parseInt(request.getParameter("id"));
        Sighting updatedSighting = sightingDao.getById(id);
        Date date = getDate(request);

        updatedSighting.setDateTime(date);

        float longitude = getCoords(request)[0];
        float latitude = getCoords(request)[1];

        updatedSighting.setLatitude(latitude);
        updatedSighting.setLongitude(longitude);
        updatedSighting.setSpecies(request.getParameter("species"));
//        logger.info("updatedSighting" + updatedSighting);

        if (fromSingleUser) {
            if (updatedSighting.getUser().getUserName().equals(request.getRemoteUser()))  {
                sightingDao.saveOrUpdate(updatedSighting);
                response.sendRedirect(redirectUrl.replace("/fluttr/", ""));
            } else {
                request.getRequestDispatcher("/addSighting.jsp").forward(request, response);
            }
        } else {
            sightingDao.saveOrUpdate(updatedSighting);
            response.sendRedirect(redirectUrl.replace("/fluttr/", ""));
        }
    }
}
