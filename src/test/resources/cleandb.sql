delete from users;
delete from user_roles;
delete from sightings;
INSERT INTO users VALUES (1, 'emullendore','password1'),(2,'ihecker','password2'), (3, 'gmullendore', 'password3');
INSERT INTO user_roles VALUES (1, 'emullendore','admin', 1),(2, 'ihecker','user', 2);
INSERT INTO sightings VALUES (1,43.073051,-89.401230,'ruby-throated','2020-02-16 10:49:10',1,1), (2,42.073051,-89.501230,'ruby-throated','2020-02-16 10:49:10',1,1),(3,43.063049,-89.501228,'ruby-throated','2020-02-02 10:50:51',0,2);
