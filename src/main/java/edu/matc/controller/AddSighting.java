package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.opencagedata.ResultsItem;
import edu.matc.persistence.GenericDao;
import edu.matc.persistence.OpenCageDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.util.Date;

@WebServlet (
        name = "inputSighting",
        urlPatterns = ( "/InputSighting")
)
public class AddSighting extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        GenericDao<Sighting> dao = new GenericDao<>(Sighting.class);
        GenericDao<User> daoUser =  new GenericDao<>(User.class);

        float latitude = 0;
        float longitude = 0;

        String latitudeParameter = request.getParameter("latitude");
        String longitudeParameter = request.getParameter("longitude");
        String locationParameter = request.getParameter("location");

        if (longitudeParameter != null && longitudeParameter.length() > 1 && latitudeParameter != null && latitudeParameter.length() > 1) {
            // if defined, add these to sightings object, else will need to geocode
            latitude = Float.parseFloat(request.getParameter("latitude"));
            longitude = Float.parseFloat(request.getParameter("longitude"));

        } else if (locationParameter != null) {
            // OpenCage API to get lat and long from passed location string
            OpenCageDao openCageDao = new OpenCageDao();

            for (ResultsItem item : openCageDao
                    .getResponseDataWithParam(URLEncoder.encode(locationParameter, StandardCharsets.UTF_8.toString()))
                    .getResults())
            {
                longitude = (float) item.getGeometry().getLng();
                latitude = (float) item.getGeometry().getLat();
//                logger.info(URLEncoder.encode(locationParameter, StandardCharsets.UTF_8.toString()));
//                logger.info(latitude + ", " + longitude);
            }
        }

        String dateTimeParameter = request.getParameter("dateTime");
        // make sure the seconds are set before parsing
        if (dateTimeParameter.contains(":")) {
            dateTimeParameter += ":00";
        }

        Date date = Timestamp.valueOf(dateTimeParameter.replace("T"," "));

        String species = request.getParameter("species");
        User newUser;
        // get the new user from session?
        if (request.getRemoteUser() != null) {
            newUser = (User) daoUser.getByPropertyEqual("userName", request.getRemoteUser()).get(0);
        } else {
            // output some sort of error message instead
            newUser = new User("test", "test");
        }

        Sighting newSighting = new Sighting(newUser, longitude, latitude, species, date, true);

        int recordInserted = dao.insert(newSighting);

        String addMessage;

        if (recordInserted > 0) {
            addMessage = "success";
        } else {
            addMessage = "failure";
        }
        session.setAttribute("userAddMessage", addMessage);

        response.sendRedirect("sightingAdd");
    }
}
