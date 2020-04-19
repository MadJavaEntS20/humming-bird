package edu.matc.persistence;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.util.ArrayList;
import java.util.List;
import java.util.Set;

import static org.junit.jupiter.api.Assertions.*;

class UserDaoTest {

    GenericDao genericDao;
    GenericDao genericDaoSighting;

    /**
     * Run set up tasks before each test:
     * 1. execute sql which deletes everything from the table and inserts records)
     * 2. Create any objects needed in the tests
     */
    @BeforeEach
    void setUp() {
        genericDao = new GenericDao(User.class);
        genericDaoSighting = new GenericDao(Sighting.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");


    }
    /**
     * Verify successful retrieval of all users
     */
    @Test
    void getAllSuccess() {
        List<User> users = genericDao.getAll();
        assertEquals(6, users.size());
    }

    /**
     * Verify successful retrieval of a user
     */
    @Test
    void getByIdSuccess() {
        User retrievedUser = (User) genericDao.getById(2);
        assertEquals(2, retrievedUser.getId());
    }

    @Test
    void getUsersByUsernameSuccess() {
        List<User> users = genericDao.getByPropertyLike("userName", "ihecker");
        assertEquals(1, users.size());
    }

    /**
     * Verify successful insert of a user
     */
    @Test
    void insertSuccess() {
        User newUser = new User("gmullendore", "password3");
        int id = genericDao.insert(newUser);
        assertNotEquals(0,id);
        User insertedUser = (User) genericDao.getById(id);
        assertEquals(newUser, insertedUser);

        // Could continue comparing all values, but
        // it may make sense to use .equals()
    }

    @Test
    void insertWithSightinguccess() {
        User newUser = new User("bsmith", "password123");
        Sighting newSighting = new Sighting(newUser, -89.9f, 43.9f, "ruby-throated", new java.util.Date(System.currentTimeMillis()), true);
        newUser.addSighting(newSighting);
        int id = genericDao.insert(newUser);
        assertNotEquals(0, id);
        User insertedUser = (User) genericDao.getById(id);
        assertEquals(newUser, insertedUser);
    }

    /**
     * Verify successful delete of user
     */
    @Test
    void deleteSuccess() {
        User userToDelete = (User)genericDao.getById(1);
        Set<Sighting> userToDeleteSighting = userToDelete.getSighting();
        List<Integer> idOfSighting = new ArrayList<>();
        for (Sighting s: userToDeleteSighting) {
            idOfSighting.add(s.getId());
        }
        genericDao.delete(genericDao.getById(1));
        assertNull(genericDao.getById(1));
        for (Integer id : idOfSighting) {
            assertNull(genericDaoSighting.getById(id));
        }
    }

    @Test
    void updateUserSuccess() {
        String newUserName = "kmullendore";
        User userToUpdate = (User)genericDao.getById(1);
        userToUpdate.setUserName(newUserName);
        genericDao.saveOrUpdate(userToUpdate);
        User retrievedUser = (User) genericDao.getById(1);
        assertEquals(userToUpdate, retrievedUser);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<User> users = genericDao.getByPropertyEqual("userName", "emullendore");
        assertEquals(1, users.size());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<User> users = genericDao.getByPropertyLike("userName", "ihec");
        assertEquals(1, users.size());
    }

}