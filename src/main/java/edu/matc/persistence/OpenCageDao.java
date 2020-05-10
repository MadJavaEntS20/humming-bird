package edu.matc.persistence;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.DeserializationFeature;
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

/**
 * The type Open cage dao.
 */
public class OpenCageDao implements PropertiesLoader {
    private final Logger logger = LogManager.getLogger(this.getClass());


    /**
     * Gets response data.
     *
     * @return the response data
     */
    public OpenCageResponse getResponseData() {
        Client client = ClientBuilder.newClient();
        Properties properties;
        properties = loadProperties("/database.properties");

        WebTarget target =
                client.target(properties.getProperty("url_api"));
        return getOpenCageResponse(target);
    }

    /**
     * Gets response data with param.
     *
     * @param input the input
     * @return the response data with param
     */
    public OpenCageResponse getResponseDataWithParam(String input) {
        Client client = ClientBuilder.newClient();
        Properties properties;
        properties = loadProperties("/database.properties");
        WebTarget target =
                client.target(properties.getProperty("url_param") + input);
        return getOpenCageResponse(target);
    }

    private OpenCageResponse getOpenCageResponse(WebTarget target) {
        String response = target.request(MediaType.APPLICATION_JSON).get(String.class);
        ObjectMapper mapper = new ObjectMapper();
        mapper.disable(DeserializationFeature.FAIL_ON_UNKNOWN_PROPERTIES);
        OpenCageResponse openCageResponse;
        try {
            openCageResponse = mapper.readValue(response,OpenCageResponse.class);
        } catch (JsonProcessingException e) {
            openCageResponse = null;
            logger.error("JsonProcessingException");
            logger.error(e);
        }
        logger.info("openCageResponse " + openCageResponse);
        return openCageResponse;
    }
}
