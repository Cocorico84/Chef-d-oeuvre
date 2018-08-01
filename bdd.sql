CREATE DATABASE chef;

CREATE TABLE Vetement
(
	id_vetement INT PRIMARY KEY,
	marque VARCHAR(30),
	description VARCHAR(200),
	lien VARCHAR(100),
	prix VARCHAR(10),
	genre VARCHAR(1),
	temperature INT
);

CREATE TABLE Pays
(
	id_pays INT PRIMARY KEY,
	nom VARCHAR(50)
);

CREATE UNIQUE INDEX pays_index ON pays (id_pays,nom);
