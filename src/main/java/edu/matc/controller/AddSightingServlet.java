package edu.matc.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;


/**
 * Servlet to redirect to Sightings pages after adding sighting
 * @author emullendore
 */
@WebServlet (
        name = "inputSightingServlet",
            urlPatterns = { "/inputSightingServlet" }
        )

public class AddSightingServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String url = "/fluttr/Sightings";
        response.sendRedirect(url);
    }

}
