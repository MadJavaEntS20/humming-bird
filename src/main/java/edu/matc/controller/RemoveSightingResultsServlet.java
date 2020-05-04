package edu.matc.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.net.URL;

@WebServlet (
        name="removeSightingResultsServlet",
        urlPatterns = { "/removeSightingResultsServlet"}
)

public class RemoveSightingResultsServlet extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        URL parsedUrl = new URL(request.getHeader("referer"));
//        logger.info("parsedUrl" + parsedUrl + "getFile" + parsedUrl.getFile() + "getPath" + parsedUrl.getPath());
        response.sendRedirect("/fluttr/searchUser?" + parsedUrl.getQuery());;
    }
}
