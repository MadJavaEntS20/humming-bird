package edu.matc.test.util;

import com.fasterxml.jackson.databind.DeserializationFeature;
import com.fasterxml.jackson.databind.ObjectMapper;
import edu.matc.api.Geometry;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.junit.Test;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import static junit.framework.TestCase.assertEquals;


public class RestApiTest {
    @Test
    public void testswapiJSON() throws Exception {
        final Logger logger = LogManager.getLogger(this.getClass());

        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://api.opencagedata.com/geocode/v1/json?q=Sturgeon%20Bay&key=a3c027861ea34a9e9c6760b4c178f0bc&limit=1");
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        logger.info(response);
        ObjectMapper mapper = new ObjectMapper();
        mapper.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
        Geometry geometry = mapper.readValue(response, Geometry.class);
        double expectedLatitude = geometry.getLng();
        double expectedLongitude = geometry.getLng();
        logger.info(geometry.toString());
        assertEquals(10.1, expectedLatitude);
        assertEquals(10.2, expectedLongitude);
    }
}
