# Weekly Reflection

Document how your week in Ent Java went. You may use whatever format suits you, as long as you share how much time you worked and provide a general overview of how things went: achievements and struggles. 


### Week 2

1/28/2020 - 6 hours

Tasks Completed:

 * completed week 2 activities and exercises
 * some brainstorming on Independent project
 
Other Thoughts:

I need to do more thinking about the implementation of my project. From my work, I have a general idea of how this spatial data
will be stored in the database. Given time constraints most data that would be crowd-sourced will have to be dummy data.

 
### Week 3

2/4/2020 - 8 hours

Tasks Completed:

   * completed week 3 activities and exercises
   
   Other Thoughts:
   
   I need to do some work on indie project because checkpoint one is due next week. 
### Week 4

2/11/2020 - 10 hours

Looking into realistic implementation of my app. OpenLayers for the map seems the best route.
It's open source and what I need it for is not very complex. Adding points to map
is main concern, hoping to have a table with lat/lon and add points like [this](https://gis.stackexchange.com/questions/314140/openlayers-5-add-multiple-markers) 

For user flow, it's user views maps and if logged in, user also enters sighting that will be added to the db which the map reads from
Should there be some form of moderation to ensure hummingbirds aren't "seen" in Antarctica or somewhere dumb

Found a cool api for geocoding, so if a user enters an address, it will be converted to lat/lon for the database: [here](https://opencagedata.com/)

Could be useful to implement crowdsourced map on OL: [link](https://gis.stackexchange.com/questions/32159/using-openlayers-to-collect-data-by-crowdsourcing)

### Week 5 

2/18/2020 - 10 hours

Discussion about Check Point 1: Make reporting bad data crowdsourced as well instead of an admin full-time job (also validate location first to confirm it exists within some sort of bounding box), in user input default to current location and current time
There's a mysql data type of Point I can use, [method for extracting](https://dev.mysql.com/doc/refman/8.0/en/gis-point-property-functions.html#function_st-x)

Work with one-to-many relationships, going to one USER has many SIGHTINGS
Presentation this week on annotations, setting constraints for lat and long to fall
within a certain range and output that message to the user would be a good use-case

### Week 6

2/25/20 - ∞ hours

Many mistakes were made in attempting to use gitignore and refactor some things
Also a very nasty stackoverflow error that had nothing to do with my toString method
Trying to get back on track now

### Week 7

3/3/20 - 11 hours

Deploying the AWS had some bumps in the road, as was expected
I had to use Putty because of my windows machine
I can deploy it, but the url is not accessible anywhere outside of my current
ip and environment. will there be a way I can eventually share this
with friends and family?


3/10/20 - 10 hours

Lots of time trying to get login working
Adding sighting to map now requires login






