package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.opencagedata.OpenCageResponse;
import edu.matc.opencagedata.ResultsItem;
import edu.matc.persistence.GenericDao;
import edu.matc.persistence.OpenCageDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;
import java.sql.Timestamp;
import java.util.Date;

/**
 * AddSighting servlet to take in addSighting.jsp form input, validate, and insert into db
 *  @author emullendore
 */
@WebServlet (
        name = "inputSighting",
        urlPatterns = ( "/inputSighting")
)

public class AddSighting extends HttpServlet {
    /**
     * The Logger.
     */
    public final Logger logger = LogManager.getLogger(this.getClass());

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        GenericDao<Sighting> dao = new GenericDao<>(Sighting.class);
        GenericDao<User> daoUser =  new GenericDao<>(User.class);

        User newUser = null;
        if (request.getRemoteUser() != null) {
            newUser = daoUser.getByPropertyEqual("userName", request.getRemoteUser()).get(0);
        }
        String statusMessage;

        float longitude = getCoords(request)[0];
        float latitude = getCoords(request)[1];

        if (longitude == 0f && latitude == 0f) {
//            logger.info("lat and long are 0");
            statusMessage = "Invalid location input, please try again";
            session.setAttribute("statusMessage", statusMessage);
            request.getRequestDispatcher("/addSighting.jsp").forward(request, response);
        } else if ( longitude > -108 && longitude < -73 && latitude < 55 && latitude > 20) {

            String species = request.getParameter("species");
            Date date = getDate(request);
            Sighting newSighting = new Sighting(newUser, longitude, latitude, species, date, true);
            logger.info("new Sighting to be added: " + newSighting);

            int recordInserted = dao.insert(newSighting);

            String addMessage;

            if (recordInserted > 0) {
                addMessage = "Sighting Added Successfully!";
            } else {
                addMessage = "Error in Adding Sighting";
            }
            session.setAttribute("userAddMessage", addMessage);
            response.sendRedirect("sightingAdd");
        } else {
            statusMessage = "Input is out of valid range for hummingbirds";
            session.setAttribute("statusMessage", statusMessage);
            request.getRequestDispatcher("/addSighting.jsp").forward(request, response);
        }

    }

    /**
     * Gets date.
     *
     * @param request the request
     * @return the date
     */
    public static Date getDate(HttpServletRequest request) {
        String dateTimeParameter = request.getParameter("dateTime");
        // make sure the seconds are set before parsing
        if (dateTimeParameter.contains(":")) {
            dateTimeParameter += ":00";
        }
        return Timestamp.valueOf(dateTimeParameter.replace("T"," "));
    }

    /**
     * Get coords float [ ].
     *
     * @param request the request
     * @return the float [ ]
     * @throws UnsupportedEncodingException the unsupported encoding exception
     */
    public static float[] getCoords(HttpServletRequest request) throws UnsupportedEncodingException {
        float latitude = 0;
        float longitude = 0;

        String latitudeParameter = request.getParameter("latitude");
        String longitudeParameter = request.getParameter("longitude");
        String locationParameter = request.getParameter("location");

        if (longitudeParameter != null && longitudeParameter.length() > 1 && latitudeParameter != null && latitudeParameter.length() > 1) {
            // if defined, add these to sightings object, else will need to geocode
            latitude = Float.parseFloat(latitudeParameter);
            longitude = Float.parseFloat(longitudeParameter);

        } else if (locationParameter != null) {
            // OpenCage API to get lat and long from passed location string
            OpenCageDao openCageDao = new OpenCageDao();
            OpenCageResponse item = openCageDao.getResponseDataWithParam(URLEncoder.encode(locationParameter, StandardCharsets.UTF_8.toString()));
            if (item != null) {
                for (ResultsItem result : item.getResults()) {
                    latitude = (float) result.getGeometry().getLat();
                    longitude = (float) result.getGeometry().getLng();
                }
            } else {
                latitude = 0f;
                longitude = 0f;
            }
        }
        return new float[]{longitude, latitude};
    }
}
