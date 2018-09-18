CREATE DATABASE meteo IF NOT EXISTS ;

USE meteo;

CREATE TABLE Vetement
(
	id_vetement INT(3) AUTO_INCREMENT,
	description VARCHAR(200),
	lien VARCHAR(300),
	prix FLOAT(10),
	genre VARCHAR(1)
	id_marque INT(3),
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
	id_pays VARCHAR(3)
);

CREATE TABLE Meteo
(
	id_meteo INT(3) AUTO_INCREMENT,
	insert_date date,
	temperature FLOAT(4),
	rain FLOAT(4),
	id_ville INT(3),
);


CREATE TABLE Marque
(
	id_marque INT (3) AUTO_INCREMENT PRIMARY KEY,
	marque VARCHAR(50)
)

ALTER TABLE Vetement ADD FOREIGN KEY (id_marque) REFERENCES Marque(id_marque);
ALTER TABLE Meteo ADD FOREIGN KEY (id_ville) REFERENCES Ville(id_ville);
ALTER TABLE Ville ADD FOREIGN KEY (id_pays) REFERENCES Pays(id_pays);
