package edu.matc.test.util;

import edu.matc.utilities.PropertiesLoader;
import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;

import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Properties;
/**
 * Provides access the database
 * Created on 8/31/16.
 *
 * @author pwaite
 */

public class Database implements PropertiesLoader {

    private final Logger logger = LogManager.getLogger(this.getClass());
    // create an object of the class Database
    private static Database instance = new Database();

    private Properties properties;

    private Connection connection;

    // private constructor prevents instantiating this class anywhere else
    private Database() {
        properties = loadProperties("/database.properties");
    }

    // get the only Database object available
    public static Database getInstance() {
        return instance;
    }

    public Connection getConnection() {
        return connection;
    }

    public void connect() throws Exception {
        if (connection != null)
            return;

        try {
            Class.forName(properties.getProperty("driver"));
        } catch (ClassNotFoundException e) {
            throw new Exception("Database.connect()... Error: MySQL Driver not found");
        }

        String url = properties.getProperty("url");
        connection = DriverManager.getConnection(url, properties.getProperty("username"),  properties.getProperty("password"));
    }

    public void disconnect() {
        if (connection != null) {
            try {
                connection.close();
            } catch (SQLException e) {
                logger.error("Cannot close connection" + e);
            }
        }

        connection = null;
    }

    /**
     * Run the sql.
     *
     * @param sqlFile the sql file to be read and executed line by line
     */
    public void runSQL(String sqlFile) {

        Statement stmt = null;
        ClassLoader classloader = Thread.currentThread().getContextClassLoader();
        InputStream inputStream = classloader.getResourceAsStream(sqlFile);
        try (BufferedReader br = new BufferedReader(new InputStreamReader(inputStream))) {

            Class.forName("com.mysql.cj.jdbc.Driver");
            connect();
            stmt = connection.createStatement();

            while (true) {
                String sql = br.readLine();
                if (sql == null) {
                    break;
                }
//                logger.info(sql + "Database.java");
                stmt.executeUpdate(sql);

            }

        } catch (Exception se) {
            logger.error(se);
        } finally {
            disconnect();
        }

    }
}