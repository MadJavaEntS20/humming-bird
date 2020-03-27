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


    public OpenCageResponse getResponseData() {
        Client client = ClientBuilder.newClient();
        Properties properties;
        properties = loadProperties("/database.properties");

        WebTarget target =
                client.target(properties.getProperty("url_api"));
        return getOpenCageResponse(target);
    }

    public OpenCageResponse getResponseDataWithParam(String input) {
        Client client = ClientBuilder.newClient();
        Properties properties;
        properties = loadProperties("/database.properties");

        WebTarget target =
                client.target(properties.getProperty("url_api_param") + input);
        logger.info(properties.getProperty("url_api_param") + input);
        return getOpenCageResponse(target);
    }

    private OpenCageResponse getOpenCageResponse(WebTarget target) {
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
