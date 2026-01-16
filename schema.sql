CREATE DATABASE locovelo;
USE locovelo;

CREATE TABLE velo (
    id INT AUTO_INCREMENT PRIMARY KEY,
    marque VARCHAR(255) NOT NULL,
    type VARCHAR(255) NOT NULL,
    taille INT UNSIGNED NOT NULL,
    tarif_horaire DECIMAL(3,2) UNSIGNED NOT NULL,
    etat VARCHAR(255) NOT NULL,
    disponibilite BOOLEAN DEFAULT TRUE
);

CREATE TABLE client (
    id INT AUTO_INCREMENT PRIMARY KEY,
    prenom VARCHAR(255) NOT NULL,
    nom VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    date_inscription DATE NOT NULL,
    UNIQUE(email)
);

CREATE TABLE location (
    id INT AUTO_INCREMENT PRIMARY KEY,
    date_debut DATETIME NOT NULL,
    date_fin DATETIME NOT NULL,
    montant_total INT UNSIGNED NOT NULL,
    id_velo INT NOT NULL,
    id_client INT NOT NULL,
    FOREIGN KEY (id_velo) REFERENCES velo(id),
    FOREIGN KEY (id_client) REFERENCES client(id)
);