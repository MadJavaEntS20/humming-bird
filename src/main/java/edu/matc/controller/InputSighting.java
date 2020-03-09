package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.Date;

@WebServlet (
        name = "addSighting",
        urlPatterns = ( "/addSighting")
)
public class InputSighting {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ParseException {
        HttpSession session = request.getSession();
        GenericDao<Sighting> dao = new GenericDao<>(Sighting.class);

        float latitude;
        float longitude;

        if (request.getParameter("latitude") == null && request.getParameter("longitude") == null) {
            // OpenCage API to get lat and long from passed location string
            latitude = 0f;
            longitude = 0f;
        } else {
            // if defined, add these to sightings object, else will need to geocode
            latitude = Float.parseFloat(request.getParameter("latitude"));
            longitude = Float.parseFloat(request.getParameter("longitude"));
        }

//        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
//        Date date = (Date)formatter.parse(sightingDateString);
//        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
//        Date javaDate = sdf.parse(request.getParameter("dateTime"));
//        Date newDate = new java.sql.Timestamp (javaDate.getTime());

        DateFormat formatter = new SimpleDateFormat("yyyy-MM-dd'T'hh:mm");
        Date date = formatter.parse(request.getParameter("dateTime"));

        String species = request.getParameter("species");

        // get the new user from session?
        User newUser = new User("bsmith", "password123");

        Sighting newSighting = new Sighting(newUser, longitude, latitude, species, date, true);
        int recordInserted = dao.insert(newSighting);

        String addMessage;

        if (recordInserted > 0) {
            addMessage = "success";
            // success
        } else {
            addMessage = "failure";
            // failure
        }
        session.setAttribute("userAddMessage", addMessage);

        response.sendRedirect("Sighting");

    }
}
