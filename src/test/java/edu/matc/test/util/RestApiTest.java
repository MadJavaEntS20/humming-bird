package edu.matc.test.util;

import com.fasterxml.jackson.databind.ObjectMapper;
import edu.matc.api.Geometry;
import org.junit.Test;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;

import static junit.framework.TestCase.assertEquals;

public class RestApiTest {
    @Test
    public void testswapiJSON() throws Exception {
        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://api.opencagedata.com/geocode/v1/json?q=Sturgeon%20Bay&key=a3c027861ea34a9e9c6760b4c178f0bc");
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        ObjectMapper mapper = new ObjectMapper();
        Geometry geometry = mapper.readValue(response, Geometry.class);
        float expectedLatitude = (float)geometry.getLat();
        float expectedLongitude = (float)geometry.getLng();
        assertEquals(0f, expectedLatitude);
        assertEquals(0f, expectedLongitude);
    }
}
