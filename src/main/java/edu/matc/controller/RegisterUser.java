package edu.matc.controller;

import edu.matc.entity.Role;
import edu.matc.entity.User;
import edu.matc.persistence.GenericDao;
import org.apache.catalina.realm.MessageDigestCredentialHandler;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.security.NoSuchAlgorithmException;

/**
 * A simple servlet to welcome the user.
 * @author pwaite
 */

@WebServlet(
        name = "registerUser",
        urlPatterns = {"/RegisterUser"}
)

public class RegisterUser extends HttpServlet {
    private final Logger logger = LogManager.getLogger(this.getClass());

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException {
       HttpSession session = request.getSession();

       User newUser = new User();

       GenericDao<User>  genericDao = new GenericDao<>(User.class);
       GenericDao<Role> genericDaoRole = new GenericDao<>(Role.class);

       String userName = request.getParameter("username");
       String password = request.getParameter("password");

       MessageDigestCredentialHandler credentialHandler = new MessageDigestCredentialHandler();
       try {
           credentialHandler.setAlgorithm("sha-256");
       } catch (NoSuchAlgorithmException e) { logger.error(e ); }
       credentialHandler.setEncoding("UTF-8");
       String hashedPassword = credentialHandler.mutate(password);
       logger.info(hashedPassword);

        newUser.setUserName(userName);
        newUser.setUserPassword(password);

       int recordInserted = genericDao.insert(newUser);

        Role newRole = new Role();

        newRole.setUserName(newUser.getUserName());
        newRole.setUserRole("user");
        newRole.setUserId(newUser.getId());

        int recordInsertedRole = genericDaoRole.insert(newRole);


       String addMessage;

       if (recordInserted > 0 && recordInsertedRole > 0) {
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