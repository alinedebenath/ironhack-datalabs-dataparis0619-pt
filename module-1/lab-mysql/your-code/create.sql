USE lab_mysql;
CREATE TABLE objet (type VARCHAR(20), titre TEXT, INSEE INT, commune VARCHAR(20));
CREATE TABLE geo (commune VARCHAR(50), departement INT, region VARCHAR(50));
CREATE TABLE auteurs (name VARCHAR(250));
CREATE TABLE reservations (nbr_de_reservations INT);