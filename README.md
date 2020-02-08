# Katya Mullendore Individual Project: Hummingbird Tracker


### Problem Statement

This application aims to give users an opportunity to be citizen scientists and
become active participants in 
monitoring the health of the environment.
 
With each entry added, a map of  
collective sightings will be created to illustrate the journey of the hummingbird. 


### Project Technologies/Techniques 

* Security/Authentication
  * Tomcat's JDBC Realm Authentication
  * Admin role: create/read/update/delete (crud) of all data
  * User role: create observations of hummingbirds
  * All: anyone can view migration map (no login)
* Database
  * MySQL
  * Store users and roles
  * Store all data for observations 
* Web Mapping API
    * OpenLayers displaying a map with points
    * OpenCageData for geocoding
* ORM Framework
  * Hibernate 5
* Dependency Management
  * Maven
* CSS 
  * PureCSS.io
* Data Validation
  * Bootstrap Validator for front end
  * Explore Hibernate's validation
* Logging
  * Configurable logging using Log4J2. In production, only errors will normally be logged, but logging at a debug level can be turned on to facilitate trouble-shooting. 
* Hosting
  * AWS
* Independent Research Topic/s
  * CI tools in AWS
  * Materialize
  * Hibernate Validation
  * Hibernate Search
* Project Lombok to eliminate boilerplate code like getters/setters/equals
* Unit Testing
  * JUnit tests to achieve 80%+ code coverage 
* IDE: IntelliJ IDEA


### Design

* [User Stories](DesignDocuments/userStories.md)
* [Screen Design](DesignDocuments/Screens.md)
* [Application Flow](DesignDocuments/applicationFlow.md)
* [Database Design](DesignDocuments/databaseDiagram.png)

### [Project Plan](ProjectPlan.md)

### [Weekly Refelection](WeeklyReflection.md)