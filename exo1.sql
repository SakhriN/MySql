CREATE DATABASE IF NOT EXISTS exo1;

USE exo1;

CREATE TABLE IF NOT EXISTS personne(
personne_id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(3),
prenom VARCHAR(50),
nom VARCHAR(50),
telephone VARCHAR(10),
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

-- Partie 2 exo 1

INSERT INTO personne VALUES 
(1,"M.","Nassim12","Sakhri","0123456789","sakhri@slhf.fr"),
(2,"M.","Nassim0","Sakhri","0123456789","sakhri@slhf.fr"),
(3,"M.","Nassim1","Sakhri","0123456789","sakhri@slhf.fr"),
(4,"M.","Nassim2","Sakhri","0123456789","sakhri@slhf.fr"),
(5,"M.","Nassim3","Sakhri","0123456789","sakhri@slhf.fr"),
(6,"M.","toto","Sakhri","0123456789","sakhri@slhf.fr");

INSERT INTO adresse VALUES (1,"rue stephenson","Roubaix",59100,1);

SELECT * FROM personne;
SELECT * FROM adresse;

DELETE FROM personne WHERE personne_id = 3;
DELETE FROM personne WHERE prenom = "toto";
