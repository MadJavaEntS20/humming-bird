package edu.matc.persistence;

import edu.matc.entity.Role;
import edu.matc.entity.User;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class RoleDaoTest {

    RoleDao dao;
    GenericDao genericDao;

    /**
     * Run set up tasks before each test:
     * 1. execute sql which deletes everything from the table and inserts records)
     * 2. Create any objects needed in the tests
     */
    @BeforeEach
    void setUp() {

        edu.matc.test.util.Database database = edu.matc.test.util.Database.getInstance();
        database.runSQL("cleandb.sql");

        dao = new RoleDao();
        genericDao = new GenericDao(User.class);

    }

    /**
     * Verify successful retrieval of a user
     */
    @Test
    void getByIdSuccess() {
        Role retrievedRole = (Role) genericDao.getById(2);
        assertEquals("ihecker", retrievedRole.getUserRole());
    }

    /**
     * Verify successful insert of a user
     */
    @Test
    void insertSuccess() {
        User newUser = new User("gmullendore", "password3");

        Role newRole = new Role(newUser.getUserName(), "user");
        int id = genericDao.insert(newRole);
        assertNotEquals(0,id);
        Role insertedRole = (Role) genericDao.getById(id);
        assertTrue(newRole.equals(insertedRole));
        // Could continue comparing all values, but
        // it may make sense to use .equals()
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
        genericDao.delete(genericDao.getById(1));
        assertNull(dao.getById(1));
    }

    /**
     * Verify successful retrieval of all users
     */
    @Test
    void getAllSuccess() {
        List<Role> users = (List<Role>)genericDao.getAll();
        assertEquals(2, users.size());
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Role> users = genericDao.getByPropertyEqual("userName", "emullendore");
        assertEquals(1, users.size());
        assertEquals(1, users.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Role> users = genericDao.getByPropertyLike("userName", "ihec");
        assertEquals(1, users.size());
    }

}