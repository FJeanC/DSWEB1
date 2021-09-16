drop database if exists Cars;

create database Cars;

use Cars

create table CarsData(idpic integer not null AUTO_INCREMENT, caption varchar(45) not null, img longblob not null, primary key(idpic));

INSERT INTO CarsData(caption, img) VALUES("URUS",LOAD_FILE('C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/civic.jpg'));