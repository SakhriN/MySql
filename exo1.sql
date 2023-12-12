CREATE DATABASE IF NOT EXISTS exo1;

USE exo1;

CREATE TABLE IF NOT EXISTS personne(
personne_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(3),
prenom VARCHAR(50),
nom VARCHAR(50),
telephone INT,
email VARCHAR(50)	
);



CREATE TABLE IF NOT EXISTS adresse(
adresse_id INT AUTO_INCREMENT PRIMARY KEY,
rue varchar(50),
ville varchar(50),
codePostal int,
personne_id int not null,
constraint fk_personne_id foreign key (personne_id) REFERENCES personne(personne_id)
);

show columns from personne;
show columns from adresse;

show tables;