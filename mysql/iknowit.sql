use iknowitdb;
DROP TABLE IF EXISTS Ingredientes;
create table if not exists Ingredientes (id INT(6) PRIMARY KEY, name VARCHAR(30) NOT NULL);
insert into Ingredientes values (1, "Gordura polisaturada");
