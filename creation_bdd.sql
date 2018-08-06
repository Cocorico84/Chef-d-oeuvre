CREATE DATABASE chef IF NOT EXISTS ;

USE chef;

CREATE TABLE Vetement
(
	id_vetement INT(3) AUTO_INCREMENT
	marque VARCHAR(50),
	description VARCHAR(200),
	lien VARCHAR(300),
	prix FLOAT(10),
	genre VARCHAR(1)
);

CREATE TABLE Pays
(
	id_pays VARCHAR(2) PRIMARY KEY,
	nom VARCHAR(50)
);

CREATE TABLE Ville
(
	id_ville INT(3) AUTO_INCREMENT,
	nom_ville VARCHAR(50),
	id_pays VARCHAR(50)
);

ALTER TABLE Ville ADD FOREIGN KEY (id_pays) REFERENCES Pays (id_pays);

CREATE TABLE Meteo
(
	id_meteo INT(3) AUTO_INCREMENT,
	insert_date date,
	temperature FLOAT,
	rain FLOAT,
	id_ville INT FOREIGN KEY REFERENCES Ville(id_ville)
);

ALTER TABLE Meteo ADD FOREIGN KEY (id_ville) REFERENCES Ville(id_ville);


