--Creacion de base de datos

create database ValoracionFinal

--Creacion de tablas

create table Dueno (
  DNI int not null primary key,
  Nombre varchar(100) not null,
  Apellido varchar(100) not null,
  Telefono varchar(100) not null,
  Direccion varchar(100) not null
 );
 
create table Historial (
  ID_historial int not null auto_increment primary key,
  Fecha date not null,
  Perro int not null,
  Descripcion varchar(100),
  Monto int not null,
  foreign key (Perro) references Perro(ID_perro)
 );

--Punto 1

create table Perro (
  ID_perro int not null auto_increment primary key,
  Nombre varchar(100) not null,
  Fecha_nac date not null,
  Sexo varchar(100) not null,
  DNI_dueno int not null,
  foreign key (DNI_dueno) references Dueno(DNI)
 );
 
 --Punto 2

set dateformat dmy;

insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ('Toby', '12-3-2018', 'Macho', 35175634);
insert into Dueno (DNI, Nombre; Apellido, Telefono, Direccion) values (35175634, 'Carlos', 'Martinez', 2944667112, 'Moreno 786');

--Insercion de datos adicionales para poder hacer la consulta del punto 7

insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ('Maxi', '23-4-2016', 'Macho', 33145680);
insert into Perro (Nombre, Fecha_nac, Sexo, DNI_dueno) values ('Lola', '23-7-2015', 'Hembra', 41146801);
insert into Dueno (DNI, Nombre; Apellido, Telefono, Direccion) values (33145680, 'Mariana', 'Perez', 2944455679, 'Rolando 1123');
insert into Dueno (DNI, Nombre; Apellido, Telefono, Direccion) values (41146801, 'Carla', 'Gonzales', 2944459098, 'Av. Bustillo km 11');
insert into Historial (Fecha, Perro, Descripcion, Monto) values ('01-7-2022', 1, 'Caniche', 3500);
insert into Historial (Fecha, Perro, Descripcion, Monto) values ('14-7-2022', 2, 'Bulldog', 4500);
insert into Historial (Fecha, Perro, Descripcion, Monto) values ('11-8-2022', 3, 'Border Collie', 4500);

--Punto 7

select Monto from Historial where month(Fecha) = 7;

