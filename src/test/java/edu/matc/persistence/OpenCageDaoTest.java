package edu.matc.persistence;

import edu.matc.opencagedata.ResultsItem;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

class OpenCageDaoTest {

    @Test
    void getResponseSuccess() {
        OpenCageDao dao = new OpenCageDao();
        double latitude = 0;
        double longitude = 0;
        for (ResultsItem item : dao.getResponseData().getResults()) {
             latitude = item.getGeometry().getLat();
             longitude = item.getGeometry().getLng();
        }
        assertEquals(44.8341639, latitude);
        assertEquals(-87.377042, longitude);
    }
}