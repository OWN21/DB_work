/* Bedingtes Löschen*/
USE work;

DROP TABLE IF EXISTS users;

/* Variante 2 Doppelte Usernamen NICHT mehr möglich --> UNIQUE */

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL UNIQUE,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE users;

INSERT INTO users (user_name,first_name,family_name) VALUES ("max","Max","Mütze");
INSERT INTO users (user_name,first_name,family_name) VALUES ("maxine","Maxine","Mütze");
INSERT INTO users (user_name,first_name,family_name) VALUES ("max2","Max","Mützerich");

SELECT * FROM users;