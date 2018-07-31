CREATE DATABASE oeuvre;

CREATE TABLE habits
(
	id_habits INT PRIMARY KEY,
	type VARCHAR(50),
	sexe VARCHAR(2),
	marque VARCHAR(50),
	prix INT,
	lien VARCHAR(150)
);

CREATE TABLE pays;
(
	id_pays INT PRIMARY KEY,
	nom VARCHAR(50)
);

CREATE UNIQUE INDEX pays_index ON pays (id_pays,nom);