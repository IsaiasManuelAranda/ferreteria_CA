CREATE DATABASE ferreteria_CA;
USE ferreteria_CA;

CREATE TABLE clientes(
    id_cliente int not null auto_increment primary key,
    nombre varchar(30) not null,
    ape_pat varchar(30) not null,
    ape_mat varchar(30) not null,
    telefono char(10) not null,
    email varchar(35) not null
);

INSERT INTO clientes(nombre, ape_pat, ape_mat, telefono, email)VALUES
('Juan', 'Perez', 'Martinez', '1234567891', 'jaun@email'),
('Pedro', 'Lopez', 'Lomo', '1232414323', 'pedro@emial'),
('Arturo', 'Mendez', 'Pina', '7651829345', 'Artur@mememe');

SELECT * FROM clientes;

CREATE USER 'chay'@'localhost' IDENTIFIED BY 'chay';
GRANT ALL PRIVILEGES ON ferreteria_CA.* TO 'chay'@'localhost';
FLUSH PRIVILEGES;