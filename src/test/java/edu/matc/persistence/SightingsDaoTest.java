package edu.matc.persistence;

import edu.matc.entity.Sightings;
import edu.matc.entity.User;
import edu.matc.test.util.Database;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static org.junit.jupiter.api.Assertions.*;

class SightingsDaoTest {

//    SightingsDao dao;
    GenericDao genericDao;

    /**
     * Run set up tasks before each test:
     * 1. execute sql which deletes everything from the table and inserts records)
     * 2. Create any objects needed in the tests
     */
    @BeforeEach
    void setUp() {
        genericDao = new GenericDao(Sightings.class);

        Database database = edu.matc.test.util.Database.getInstance();
        database.runSQL("cleandb.sql");
    }

    /**
     * Verify successful retrieval of all users
     */
    @Test
    void getAllSuccess() {
        List<Sightings> users = (List<Sightings>)genericDao.getAll();
        assertEquals(2, users.size());
    }


    /**
     * Verify successful retrieval of a user
     */
    @Test
    void getByIdSuccess() {
        Sightings retrievedSightings = (Sightings) genericDao.getById(2);
        assertEquals(2, retrievedSightings.getId());
    }

    /**
     * Verify successful insert of a user
     */
    @Test
    void insertSuccess() throws ParseException {
        User newUser = new User("gmullendore", "password3");
        Date date = new Date();

        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy HH:mm:ss");
        Date javaDate = sdf.parse("06/10/2019 18:29:09");

        Sightings newSighting = new Sightings(newUser, .30f, -12.03f, "ruby-throated", new java.sql.Timestamp (javaDate.getTime()), true );
        int id = genericDao.insert(newSighting);
        assertNotEquals(0,id);
        Sightings insertedSighting = (Sightings) genericDao.getById(id);
        assertEquals(insertedSighting.getDateTime(), newSighting.getDateTime());
    }

    /**
     * Verify successful delete of user
     */
    @Test
    void deleteSuccess() {
        genericDao.delete(genericDao.getById(1));
        assertNull(genericDao.getById(1));
    }


    @Test
    void updateSightingsSuccess() {
        Sightings sightingToUpdate = (Sightings) genericDao.getById(2);
        sightingToUpdate.setApproved(false);
        genericDao.saveOrUpdate(sightingToUpdate);
        Sightings retrievedSightings = (Sightings)genericDao.getById(2);
        assertEquals(sightingToUpdate.getApproved(), false);
    }

    /**
     * Verify successful get by property (equal match)
     */
    @Test
    void getByPropertyEqualSuccess() {
        List<Sightings> sightings = genericDao.getByPropertyEqual("species", "ruby-throated");
        assertEquals(2, sightings.size());
        assertEquals(1, sightings.get(0).getId());
    }

    /**
     * Verify successful get by property (like match)
     */
    @Test
    void getByPropertyLikeSuccess() {
        List<Sightings> users = genericDao.getByPropertyLike("species", "ruby");
        assertEquals(2, users.size());
    }

}