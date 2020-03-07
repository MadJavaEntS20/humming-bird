package edu.matc.controller;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet (
        name = "addSighting",
        urlPatterns = ( "/addSighting")
)
public class InputSighting {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
        HttpSession session = request.getSession();
        GenericDao<Sighting> dao = new GenericDao<>(Sighting.class);
        response.sendRedirect("sightingAdd"); //

    }
}
