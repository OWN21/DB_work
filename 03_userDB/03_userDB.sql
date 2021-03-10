/* Bedingtes Löschen*/

USE work;

DROP TABLE IF EXISTS users;

/* Variante 1 Doppelte Usernamen möglich */

CREATE TABLE IF NOT EXISTS users
(
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    user_name VARCHAR(20) NOT NULL,
    first_name VARCHAR(20) NOT NULL,
    family_name VARCHAR(20) NOT NULL
);

DESCRIBE users;

INSERT INTO users (user_name,first_name,family_name) VALUES ("max","Max","Mütze");
INSERT INTO users (user_name,first_name,family_name) VALUES ("maxine","Maxine","Mütze");
INSERT INTO users (user_name,first_name,family_name) VALUES ("max","Max","Mützerich");

SELECT * FROM users;