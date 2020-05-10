package edu.matc.controller;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Logout action servlet
 * @author emullendore
 */
@WebServlet(
        urlPatterns = {"/logoutAction"}
)

public class LogoutAction extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        req.getSession().invalidate();;
        resp.sendRedirect(req.getContextPath());
    }
}


