delete from users;
delete from user_roles;
delete from sightings;
INSERT INTO users VALUES (1, 'emullendore','password1'),(2,'ihecker','password2'), (3, 'gmullendore', 'password3'), (4, 'sferguson', 'asdf'), (5, 'aallon', 'fdas'), (6, 'ewarren', 'qwerty');
INSERT INTO user_roles VALUES (1, 'emullendore','admin', 1),(2, 'ihecker','user', 2), (3, 'emullendore', 'user', 1), (4, 'gmullendore', 'user', 3), (5, 'sferguson', 'user', 4), (6, 'aallon', 'user', 5), (7, 'ewaren', 'user', 6);
INSERT INTO sightings VALUES (1, -73.4111553249, 38.0920553774, 'ruby-throated', '2020-05-21 00:55:41', 1, 3), (2, -81.5675037691, 47.9136321397, 'green-violetear', '2020-04-08 10:12:07', 1, 5), (3, -82.1871812534, 46.0111858268, 'ruby-throated', '2020-04-18 00:06:49', 1, 3),(4, -75.7396545625, 36.3901458107, 'rufous', '2020-06-25 20:45:52', 1, 3), (5, -80.7389346063, 37.6880481558, 'broad-billed', '2020-05-11 06:32:44', 1, 1), (6, -84.0686964023, 41.1524942311, 'green-violetear', '2020-08-26 22:50:07', 1, 1);