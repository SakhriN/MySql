CREATE DATABASE exo4;

USE exo4;

CREATE TABLE IF NOT EXISTS livre(
id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(150),
author VARCHAR(50),
editor VARCHAR(50),
publication_date DATE,
isbn_10 VARCHAR(10),
isbn_13 VARCHAR(15)
) ;


SELECT * FROM livre;

