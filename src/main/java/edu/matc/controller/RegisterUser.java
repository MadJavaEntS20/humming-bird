package edu.matc.controller;

import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.*;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * A simple servlet to welcome the user.
 * @author pwaite
 */

@WebServlet(
        name = "registerUser",
        urlPatterns = {"/RegisterUser"}
)

public class RegisterUser extends HttpServlet {
   public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       ServletContext context = getServletContext();
       HttpSession session = request.getSession();

       GenericDao<User> genericDao = new GenericDao<>(User.class);

       String userName = request.getParameter("username");
       // will need to be updated
       String password = request.getParameter("password");

       User newUser = new User(userName, password);

       int recordInserted = genericDao.insert(newUser);

       String addMessage;

       if (recordInserted > 0) {
           addMessage = "success";
           // success
       } else {
           addMessage = "failure";
           // failure
       }
       session.setAttribute("userAddMessage", addMessage);
       response.sendRedirect("userAdd"); //
   }

}