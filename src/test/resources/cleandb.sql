delete from users;
delete from user_roles;
delete from sightings;
INSERT INTO users VALUES (1, 'emullendore','password1'),(2,'ihecker','password2'), (3, 'gmullendore', 'password3');
INSERT INTO user_roles VALUES (1, 'emullendore','admin', 1),(2, 'ihecker','user', 2), (3, 'emullendore', 'user', 1);
INSERT INTO sightings VALUES (1,42.173051,-89.01230,'rufous','2020-02-16 10:49:10',1,1), (2,45.073051,-93.401230,'green violetear','2020-02-16 10:49:10',1,1),(3,43.063049,-99.501228,'broad-billed','2020-02-02 10:50:51',0,2);
