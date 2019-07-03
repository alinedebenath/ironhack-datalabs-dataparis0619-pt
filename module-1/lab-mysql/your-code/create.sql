USE lab_mysql;
CREATE TABLE objet (type VARCHAR(20), titre VARCHAR(250), INSEE_id INT, commune VARCHAR(20));
CREATE TABLE geo (commune VARCHAR(50), departement INT, region VARCHAR(50));
CREATE TABLE auteurs (titre VARCHAR(250), name VARCHAR(250));
CREATE TABLE reservations (titre VARCHAR(250), INSEE_id INT, nbr_de_reservations INT);