--  ------------------------
--  BDD Restosducoeur_API
--  ------------------------

DROP DATABASE Restosducoeur_API;

CREATE DATABASE Restosducoeur_API;

USE Restosducoeur_API;

--  ------------------------
--  CREATION DES TABLES
--  ------------------------

CREATE TABLE IF NOT EXISTS Association (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name_ass VARCHAR(25) NOT NULL,
    date_create DATE NOT NULL,
    address VARCHAR(50) NOT NULL,
    zipcode CHAR(10) NOT NULL,
    city VARCHAR(25) NOT NULL,
    phone VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL,
    activity_area VARCHAR(255) NOT NULL
);

CREATE TABLE IF NOT EXISTS Donateur (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    lastname_dona VARCHAR(25) NOT NULL,
    firstname_dona VARCHAR(25) NOT NULL,
    email VARCHAR(50) NOT NULL
);

CREATE TABLE IF NOT EXISTS Members (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    lastname_mem VARCHAR(25) NOT NULL,
    firstname_mem VARCHAR(25) NOT NULL,
    role ENUM('admin', 'user') NOT NULL,
    mail VARCHAR(50) NOT NULL,
    number VARCHAR(25) NOT NULL,
    id_ass INT
);

CREATE TABLE IF NOT EXISTS Don (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_don DATE NOT NULL,
    type VARCHAR(25) NOT NULL,
    rising FLOAT UNSIGNED NOT NULL,
    remark VARCHAR(255) NOT NULL,
    id_ass INT,
    id_dona INT
);

CREATE TABLE IF NOT EXISTS Reçu (
    id INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
    date_received DATE NOT NULL,
    id_ass INT,
    id_dona INT
);

--  ------------------------
--  INSERTION DES DONNÉES
--  ------------------------

INSERT INTO Association VALUES
(NULL, 'Les Restos du Coeur', '1985-09-26', '42 rue de Clichy', '75009', 'Paris', '33(0)153322323', 'contact@restosducoeur.org', 'l\'aide alimentaire');

INSERT INTO Donateur VALUES
(NULL, 'BALDECK', 'Neil', 'neil.baldeck@gmail.com'),
(NULL, 'BAH', 'Ibrahima', 'bra.ibrahima.pro@hotmail.com'),
(NULL, 'DOLMA', 'Migma', 'mdolma@ymail.com'),
(NULL, 'BEUVE', 'Mattéo', 'm_beuve@outlook.com'),
(NULL, 'RYU', 'Léa', 'leacielbleu@yahoo.com'),
(NULL, 'COULIBALY', 'Mahmoud', 'doncoulybak@gmail.com');

INSERT INTO Members VALUES
(NULL, 'GOLDMAN', 'Jean-Jacques', 'admin', 'jj.goldman@gmail.com', '33(0)155074500', 1),
(NULL, 'ROBIN', 'Muriel', 'admin', 'muriel.robin@gmail.com', '33(0)142122626', 1),
(NULL, 'MATHY', 'Mimie', 'admin', 'mimmy.mathy@gmail.com', '33(0)238247281', 1),
(NULL, 'JONES', 'Michael', 'user', 'michael.jones@gmail.com', '33(0)635791234', 1),
(NULL, 'BRUEL', 'Patrick', 'user', 'patrick.bruel@gmail.com', '33(0)712345678', 1),
(NULL, 'AUBERT', 'Jean-Louis', 'user', 'jl.aubert@gmail.com', '33(0)624680246', 1),
(NULL, 'CABREL', 'Francis', 'user', 'francis.cabrel@gmail.com', '33(0)736925814', 1),
(NULL, 'FOLY', 'Liane', 'user', 'liane.foly@gmail.com', '33(0)648260482', 1),
(NULL, '', '', '', '', '', 1),
(NULL, '', '', '', '', '', 1),
(NULL, '', '', '', '', '', 1),
(NULL, '', '', '', '', '', 1);
