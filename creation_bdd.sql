CREATE DATABASE chef;

USE chef;

CREATE TABLE Vetement
(
	marque VARCHAR(50),
	description VARCHAR(200),
	lien VARCHAR(300),
	prix FLOAT(10),
	genre VARCHAR(1),
	temperature INT
);

CREATE TABLE Pays
(
	id_pays VARCHAR(50) PRIMARY KEY,
	nom VARCHAR(50)
);

CREATE TABLE Ville
(
	id_ville INT AUTO_INCREMENT,
	nom_ville VARCHAR(50),
	id_pays VARCHAR(50)
);

ALTER TABLE Ville ADD FOREIGN KEY (id_pays) REFERENCES Pays (id_pays);

CREATE TABLE Data
(
	id_data INT AUTO_INCREMENT,
	insert_date date,
	temperature FLOAT,
	rain FLOAT,
	id_ville INT FOREIGN KEY REFERENCES Ville(id_ville)
);

ALTER TABLE Donnee ADD FOREIGN KEY (id_ville) REFERENCES Ville(id_ville);

