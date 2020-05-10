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
        float latitude = 0;
        float longitude = 0;
        for (ResultsItem item : dao.getResponseData().getResults()) {
            // values will vary slightly in the ten-thousandth place each time your query the same location
            // rounding it guarantees that it wil be right every time for testing purposes
             latitude = Math.round((float) item.getGeometry().getLat());
             longitude = Math.round((float) item.getGeometry().getLng());
        }

        assertEquals(45.0, latitude);
        assertEquals(-87.0, longitude);
    }

    @Test
    void getResponseWithDataParamSuccess() throws UnsupportedEncodingException {
        String input = "Madison, WI";
        float latitude = 0;
        float longitude = 0;
        for (ResultsItem item: dao
                .getResponseDataWithParam(URLEncoder.encode(input, StandardCharsets.UTF_8.toString()))
                .getResults())
        {
            // values will vary slightly in the ten-thousandth place each time your query the same location
            // rounding it guarantees that it wil be right every time for testing purposes
            longitude = Math.round((float) item.getGeometry().getLng());
            latitude = Math.round((float) item.getGeometry().getLat());
        }
        assertEquals(latitude, 43.0);
        assertEquals(longitude, -89.0);

    }}