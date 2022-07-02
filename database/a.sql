CREATE TABLE na_comdef_users (
id_bigint bigint  NOT NULL ,
user_level_tinyint tinyint  NOT NULL DEFAULT 0,
name_string tinytext NOT NULL,
description_string text NOT NULL,
email_address_string TEXT NOT NULL,
login_string TEXT NOT NULL,
password_string TEXT NOT NULL,
last_access_datetime datetime NOT NULL DEFAULT '1970-01-01 00:00:00',
lang_TEXT TEXT NOT NULL DEFAULT 'en',
owner_id_bigint bigint NOT NULL DEFAULT -1,
PRIMARY KEY (id_bigint)
);


INSERT INTO na_comdef_users VALUES (1,1,'Server Administrator','Main Server Administrator','','serveradmin','$2y$10$y7TPsieX4l7gDCVtJgZV0e.pIRnsbn7/SJHs8c9yel6qXHywvXjIq','1970-01-01 00:00:00','en',-1),(2,2,'bmlt-workflow-bot','','','bmlt-workflow-bot','$2y$10$iv0b0A3pgU7no8BQ9wBFHegQibo00cefglbJ/Ks/ReE2JTdhfOyzC','1970-01-01 00:00:00','en',-1),(3,2,'sba','','','sba','$2y$10$MNlIuI.M4dfNAI1F3dEyyO82FZ5iPN6Si.vthSl73DsYbdtCbJcW6','1970-01-01 00:00:00','en',-1);