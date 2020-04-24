package edu.matc.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet (
        name="removeSightingResultsServlet",
        urlPatterns = { "/removeSightingResultsServlet"}
)

public class RemoveSightingResultsServlet extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String currentURL = null;
        if( request.getAttribute("javax.servlet.forward.request_uri") != null ){
            currentURL = (String)request.getAttribute("javax.servlet.forward.request_uri");
        }
        if( currentURL != null && request.getAttribute("javax.servlet.include.query_string") != null ){
            currentURL += "?" + request.getQueryString();
        }
        if (currentURL == null) {
            currentURL = "/" + request.getHeader("referer");
        }
        logger.info(currentURL);
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(currentURL);
        dispatcher.forward(request, response);
    }
}
