import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

public class test {

    public final Logger logger = LogManager.getLogger(this.getClass());
    logger.info("Some message you want logged");
}

