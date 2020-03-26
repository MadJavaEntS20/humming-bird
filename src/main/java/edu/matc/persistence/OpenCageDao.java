package edu.matc.persistence;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import edu.matc.opencagedata.OpenCageResponse;
import edu.matc.utilities.PropertiesLoader;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.MediaType;
import java.util.Properties;

public class OpenCageDao implements PropertiesLoader {
    private final Logger logger = LogManager.getLogger(this.getClass());


    OpenCageResponse getResponseData() {
        Client client = ClientBuilder.newClient();
        //TODO read in the uri from a property file
        Properties properties;
        properties = loadProperties("/database.properties");

        WebTarget target =
                client.target(properties.getProperty("url_api"));
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        ObjectMapper mapper = new ObjectMapper();
        OpenCageResponse openCageResponse= null;
        try {
            openCageResponse = mapper.readValue(response,OpenCageResponse.class);
        } catch (JsonProcessingException e) {
            logger.error("JsonProcessingException");
            logger.error(e);
            e.printStackTrace();
        }
        return openCageResponse;
    }
}
