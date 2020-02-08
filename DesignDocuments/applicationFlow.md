# Application Flow


### User Sign up

1. User chooses sign up on the menu (available on all pages, unless the user 
is signed in already).
1. User fills out the sign up form and submits.
1. Request goes to sign up servlet.
1. Servlet creates a user object and then creates user in the database.
1. Response to user confirming addition (show a message on the jsp)

### User Sign In

1. User chooses sign in on the menu (available on all pages, unless the user 
is signed in already).
1. User enters username and password on form and submits. 
1. If user is authenticated, the server will handle allowing access to edit 
pages.  JDBCRealm used for authentication (users, users_roles, and roles table).
1. If authentication fails, show error message/page.

### View Migration Map

1. User accesses Home Page
1. Page sends a request to get back data for points layer
1. Dao performs select and creates points layer object from results. (an array of lat/lons to be added)
1. Dao returns list of points layers matching criteria to servlet.
1. Servlet sends arrayList back to Migration Map jsp.
1. Migration Map jsp displays the sightings.


### Add Sighting
1. Option only available to logged in users with proper role
1. User inputs location (address to be geocoded in lat/lon or Get Current Location) and species
1. Details are sent to Add Sighting Report servlet
1. Servlet creates Sighting report object
1. Servlet sends object to dao
1. Dao adds report to the database
1. Servlet sends confirmation to report page that sighting has been added.

### View User's Sightings
1. Option only available to logged in users with proper role
1. User Navigates to account page
1. Page sends a request to view sightings servlet along with criteria 
1. Servlet uses the sightings dao to select sightings according to criteria
1. Dao performs select and creates sightings objects from results.
1. Dao returns list of sightings matching criteria to servlet.
1. Servlet sends list back to sightings  jsp.
1. User's Sightings jsp displays the sightings in table and in map
1. Consider paging results so page does not get super long and too much data 
is sent.

### About

1. Static page




