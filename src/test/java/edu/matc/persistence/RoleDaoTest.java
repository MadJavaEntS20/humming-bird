package edu.matc.persistence;

import edu.matc.entity.Role;
import edu.matc.entity.User;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class RoleDaoTest {

    GenericDao genericDao;
    GenericDao userDao;

    /**
     * Run set up tasks before each test:
     * 1. execute sql which deletes everything from the table and inserts records)
     * 2. Create any objects needed in the tests
     */
    @BeforeEach
    void setUp() {
        genericDao = new GenericDao(Role.class);
        userDao = new GenericDao(User.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
    }

    /**
     * Verify successful retrieval of a user
     */
    @Test
    void getByIdSuccess() {
        Role retrievedRole = (Role) genericDao.getById(2);
        assertEquals("ihecker", retrievedRole.getUserName());
    }

    /**
     * Verify successful insert of a user
     */
    @Test
    void insertSuccess() {
        User newUser = new User();
        newUser.setUserName("testUser");
        newUser.setUserPassword("testPass");
        userDao.insert(newUser);

        Role newRole = new Role();
        newRole.setUserName(newUser.getUserName());
        newRole.setUserRole("user");
        newRole.setUserId(newUser.getId());
        genericDao.insert(newRole);

        assertEquals(newUser.getUserName(), newRole.getUserName());
    }

    @Test
    void updateRoleSuccess() {
        String newRoleName = "admin";
        Role userToUpdate = (Role) genericDao.getById(2);
        userToUpdate.setUserRole(newRoleName);
        genericDao.saveOrUpdate(userToUpdate);
        Role retrievedRole = (Role)genericDao.getById(2);
        assertTrue(retrievedRole.equals(userToUpdate));
    }

    /**
     * Verify successful delete of user
     */
    @Test
    void deleteSuccess() {
        genericDao.delete(genericDao.getById(2));
        assertNull(genericDao.getById(2));
    }

    /**
     * Verify successful retrieval of all users
     */
    @Test
    void getAllSuccess() {
        List<Role> users = (List<Role>)genericDao.getAll();
        assertEquals(7, users.size());
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Role> users = genericDao.getByPropertyEqual("userName", "ihecker");
        assertEquals(1, users.size());
    }

}