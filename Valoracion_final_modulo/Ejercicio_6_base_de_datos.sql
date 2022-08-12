DROP DATABASE PELUQUERIA_CANINA;

CREATE DATABASE PELUQUERIA_CANINA;

use PELUQUERIA_CANINA;

-- 1 - Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
CREATE TABLE Dueno 
(
    DNI int not null PRIMARY KEY,
    nombre varchar(50),
    apellido varchar(50),
    telefono numeric,
    direccion varchar(100)
);

CREATE TABLE Perro
(
    ID_perro int not null AUTO_INCREMENT PRIMARY KEY,
    nombre varchar(50) not null,
    fecha_nac date,
    sexo varchar(1) not null,
    DNI_dueno int,
    FOREIGN KEY (DNI_dueno) REFERENCES Dueno (DNI)    
);

CREATE TABLE Historial
(
    ID_historial int not null AUTO_INCREMENT PRIMARY KEY,
    fecha date not null,
    perro int not null,
    descripcion varchar (100),
    monto int not null,
    FOREIGN KEY (perro) REFERENCES Perro (ID_perro)
);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

 insert into Dueno (DNI, nombre, apellido, telefono, direccion) 
 values 
 (28957346, 'Juan', 'Perez', '4789689', 'Belgrano 101'),
 (23546987, 'Maria', 'Perez', '4789689', 'Pueyrredon  811'),
 (29023455, 'Martin', 'Chavez', '334622', 'Luro 2254'),
 (31433281, 'Sara', 'Conor', '556277', 'Misiones 23'),
 (36557346, 'Pedro', 'Jimenez', '4269689', 'Gral Paaz 1201');
    
    
insert into Perro (nombre, fecha_nac, sexo, DNI_dueno)
values
('Puppy', '2012-12-12', 'M', 28957346),
('Fido', '2012-12-12', 'M', 23546987),
('Piltrafa', '2001-11-03', 'M', 29023455),
('Pilin', '2021-02-21', 'H', 31433281),
('Luna', '2018-05-12', 'H', 36557346);

insert into Historial(fecha,perro,descripcion,monto) 
values 
('2021-11-23', 1, 'Lavado', 2350),
('2022-07-23', 1, 'Corte', 5960),
('2018-11-13', 2, 'Lavado', 1000),
('2022-09-01', 2, 'Corte y Lavado', 23000);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 2 - Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.

 insert into Dueno (DNI, nombre, apellido, telefono, direccion) 
 values 
 (34957346, 'Dario', 'Diaz', '4269689', 'Gral Paaz 1201');
    
insert into Perro (nombre, fecha_nac, sexo, DNI_dueno)
values ('Tony', '2019-11-10', 'M', 34957346);

-- -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
-- 6 - Obtener todos los perros que asistieron a la peluquería en 2022

select p.ID_perro as ID, p.nombre as Nombre, h.fecha as Fecha_de_Asistencia
from Perro p inner join Historial h on p. ID_perro = h.perro
where h.fecha >= '2022-01-01';