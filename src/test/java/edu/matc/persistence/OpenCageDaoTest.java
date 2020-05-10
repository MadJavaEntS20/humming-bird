package edu.matc.persistence;

import edu.matc.opencagedata.ResultsItem;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.jupiter.api.Test;

import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.nio.charset.StandardCharsets;

import static org.junit.jupiter.api.Assertions.assertEquals;

class OpenCageDaoTest {
    OpenCageDao dao = new OpenCageDao();
    private final Logger logger = LogManager.getLogger(this.getClass());

    @Test
    void getResponseSuccess() {
        double latitude = 0;
        double longitude = 0;
        for (ResultsItem item : dao.getResponseData().getResults()) {
             latitude = item.getGeometry().getLat();
             longitude = item.getGeometry().getLng();
        }
        assertEquals(44.8341639, latitude);
        assertEquals(-87.377042, longitude);
    }

    @Test
    void getResponseWithDataParamSuccess() throws UnsupportedEncodingException {
        String input = "Madison, WI";
        double latitude = 0;
        double longitude = 0;
        for (ResultsItem item: dao
                .getResponseDataWithParam(URLEncoder.encode(input, StandardCharsets.UTF_8.toString()))
                .getResults())
        {
            longitude = item.getGeometry().getLng();
            latitude = item.getGeometry().getLat();
        }
        assertEquals(latitude, 43.074761);
        assertEquals(longitude, -89.3837613);

    }}