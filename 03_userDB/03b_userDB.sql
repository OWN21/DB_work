/* Bedingtes Löschen*/
DROP TABLE IF EXISTS users;

/* Variante 3 + pwd + SHA1*/

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    user_pwd VARCHAR(40) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE users;

/* pwd offen lesbar !!!*/
/*
INSERT INTO users (user_name,user_pwd,first_name,family_name) VALUES ("max","1234","Max","Mütze");
INSERT INTO users (user_name,user_pwd,first_name,family_name) VALUES ("maxine","#7Dx0!","Maxine","Mütze");
INSERT INTO users (user_name,user_pwd,first_name,family_name) VALUES ("max2","#user123","Max","Mützerich");
*/

/* Besser SHA1() */
INSERT INTO users (user_name,user_pwd,first_name,family_name) VALUES ("max", sha1("1234"), "Max", "Mütze");
INSERT INTO users (user_name,user_pwd,first_name,family_name) VALUES ("maxine",sha1("#7Dx0!"), "Maxine", "Mütze");
INSERT INTO users (user_name,user_pwd,first_name,family_name) VALUES ("max2", sha1("#user123"), "Max", "Mützerich");

SELECT * FROM users;
