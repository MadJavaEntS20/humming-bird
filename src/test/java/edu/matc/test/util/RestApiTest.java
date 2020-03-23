package edu.matc.test.util;

import org.junit.Test;
import javax.ws.rs.client.*;
import javax.ws.rs.core.MediaType;



import static org.junit.jupiter.api.Assertions.*;

public class RestApiTest {
    @Test
    public void testswapiJSON() throws Exception {
        String locationInput = "Sturgeon%20Bay";
        Client client = ClientBuilder.newClient();
        WebTarget target =
                client.target("https://api.opencagedata.com/geocode/v1/json?q=" + locationInput +"&key=a3c027861ea34a9e9c6760b4c178f0bc");
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        assertNotEquals("???", response);
    }
}
