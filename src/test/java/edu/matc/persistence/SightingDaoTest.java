package edu.matc.persistence;

import edu.matc.entity.Sighting;
import edu.matc.entity.User;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class SightingDaoTest {

    GenericDao<Sighting> genericDao;
    GenericDao<User> genericDaoUser;

    /**
     * Run set up tasks before each test:
     * 1. execute sql which deletes everything from the table and inserts records)
     * 2. Create any objects needed in the tests
     */
    @BeforeEach
    void setUp() {
        genericDao = new GenericDao<>(Sighting.class);
        genericDaoUser = new GenericDao<>(User.class);

        Database database = Database.getInstance();
        database.runSQL("cleandb.sql");
    }

    /**
     * Verify successful retrieval of all users
     */
    @Test
    void getAllSuccess() {
        List<Sighting> sightings = genericDao.getAll();
        assertEquals(6, sightings.size());
    }


    /**
     * Verify successful retrieval of a user
     */
    @Test
    void getByIdSuccess() {
        Sighting retrievedSighting = (Sighting) genericDao.getById(3);
        assertEquals(3, retrievedSighting.getId());
    }

    /**
     * Verify successful insert of a user
     * @throws ParseException if error in parsing date
     */
    @Test
    void insertSuccess() throws ParseException {
        User newUser = new User("gmullendore", "password3");
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date javaDate = sdf.parse("06/10/2019 00:00:00");
        int idNewUserInsert = genericDaoUser.insert(newUser);
        assertNotEquals(0, idNewUserInsert);

        Sighting newSighting = new Sighting(newUser, .30f, -12.03f, "ruby-throated", new java.sql.Timestamp (javaDate.getTime()), true );
        int id = genericDao.insert(newSighting);
        assertNotEquals(0,id);
        Sighting insertedSighting = genericDao.getById(id);
        assertEquals(insertedSighting.getDateTime(), newSighting.getDateTime());
    }

    /**
     * Verify successful delete of sighting and its user
     */
    @Test
    void deleteSuccess() {
        Sighting deletedSighting = genericDao.getById(3);
        int userId = deletedSighting.getUser().getId();
        User deletedSightingUser = genericDaoUser.getById(userId);
        genericDao.delete(deletedSighting);
        assertNull(genericDao.getById(3));
        assertNotNull(deletedSightingUser);
    }


    @Test
    void updateSightingSuccess() {
        Sighting sightingToUpdate = (Sighting) genericDao.getById(2);
        sightingToUpdate.setApproved(false);
        genericDao.saveOrUpdate(sightingToUpdate);
        Sighting retrievedSighting = (Sighting)genericDao.getById(2);
        assertEquals(sightingToUpdate.getApproved(), false);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Sighting> sighting = genericDao.getByPropertyEqual("species", "rufous");
        assertEquals(1, sighting.size());
        assertEquals(4, sighting.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Sighting> sighting = genericDao.getByPropertyLike("species", "ruby");
        assertEquals(2, sighting.size());
    }

}