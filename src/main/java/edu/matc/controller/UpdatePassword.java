package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * Update the password
 * @author emullendore
 */
@WebServlet (
        name = "updatePassword",
        urlPatterns = { "/updatePassword"}

)

public class UpdatePassword extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());
    private GenericDao<User> dao = new GenericDao<>(User.class);

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        int idOfUser = Integer.parseInt(request.getParameter("id"));
        User userToUpdatePassword = dao.getByPropertyEqual("userName", request.getRemoteUser()).get(0);
        request.setAttribute("userUpdate", userToUpdatePassword);
        logger.info("userToUpdatePassword" + userToUpdatePassword);
        RequestDispatcher dispatcher = request.getRequestDispatcher("/updatePassword.jsp");
        dispatcher.forward(request,response);

    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        User updatedUser = dao.getByPropertyEqual("userName", request.getRemoteUser()).get(0);
        String currentPassword = request.getParameter("currentPassword");
        String newPassword = request.getParameter("password");
        String statusMessage;
        if (currentPassword.equals(updatedUser.getUserPassword())) {
            updatedUser.setUserPassword(newPassword);
            dao.saveOrUpdate(updatedUser);
            request.getRequestDispatcher("/userPage.jsp").forward(request, response);
        } else {
            statusMessage = "Current password incorrect.";
            session.setAttribute("statusMessage", statusMessage);
            request.getRequestDispatcher("/updatePassword.jsp").forward(request, response);
        }


    }


}
