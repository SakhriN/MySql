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

DROP TABLE adresse;
DROP TABLE personne;

CREATE TABLE IF NOT EXISTS adresse(
adresse_id INT AUTO_INCREMENT PRIMARY KEY,
rue varchar(50),
ville varchar(50),
codePostal int,
personne_id int not null,
constraint fk_personne_id foreign key (personne_id) references personne(personne_id) on delete cascade
);

show columns from personne;
show columns from adresse;
show tables;

-- Partie 2 exo 1

INSERT INTO personne (title,prenom,nom,telephone,email) VALUES 
("M.","Nassim12","Sakhri","0123456789","sakhri@slhf.fr"),
("M.","Nassim0","Sakhri","0123456789","sakhri@slhf.fr"),
("M.","Nassim1","Sakhri","0123456789","sakhri@slhf.fr"),
("M.","Nassim2","Sakhri","0123456789","sakhri@slhf.fr"),
("M.","Nassim3","Sakhri","0123456789","sakhri@slhf.fr"),
("M.","toto","Sakhri","0123456789","sakhri@slhf.fr"),
("M.","titi","Dupont","0123456789","sakhri@slhf.fr"),
("M.","tata","Dupont","0123456789","sakhri@slhf.fr"),
("M.","tutu","Dupont","0123456789","sakhri@slhf.fr");

INSERT INTO adresse (rue,ville,codePostal,personne_id) VALUES ("rue stephenson","Roubaix",59100,1),
("rue du chomage","Roubaix",59100,3),
("rue de la depression","Roubaix",59100,5),
("rue de l'espoir","Roubaix",59100,1),
("rue de la reussite","Roubaix",59100,2),
("rue de la tototatatiti","Roubaix",59100,6);

SELECT * FROM personne;
SELECT * FROM adresse;

DELETE FROM adresse WHERE personne_id = 3;
DELETE FROM personne WHERE prenom = "toto";

UPDATE personne
SET telephone = "0707070707"
WHERE nom = "Dupont";