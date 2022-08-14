/*
Valoración Final Primer Cuatrimestre 
Módulo Programador TSDWAD
Materia Bases de Datos
Alumno: Pedro William Torres
La solución incluye los Puntos 1,2 obligatorios y 8 a elección
*/

# Creación de Base de Datos valoracionFinalDB
CREATE DATABASE valoracionFinalDB;

# Seleccionando base de datos
use valoracionFinalDB;

# Creación Tabla Dueño
create table Dueno( 
    Dni int NOT NULL PRIMARY KEY, 
    Nombre varchar (50) NOT NULL, 
    Apellido varchar (50) NOT NULL, 
    Telefono varchar (50) NOT NULL, 
    Direccion varchar (100) NOT NULL
    ); 

# Creación Tabla Perro
# Para el campo Sexo se considera M para macho y H para hembra
create table Perro( 
    ID_Perro int NOT NULL auto_increment PRIMARY KEY, 
    Nombre varchar (50) NOT NULL, 
    Fecha_nac datetime NOT NULL, 
    Sexo char NOT NULL, 
    Dni_Dueno int NOT NULL, 
    constraint FK_Perro_Dni_Dueño FOREIGN KEY (Dni_Dueno) REFERENCES Dueno (Dni) 
    );
    
# Creación Tabla Historial 
create table Historial( 
    ID_Historial int NOT NULL auto_increment PRIMARY KEY, 
    Fecha date NOT NULL, 
    Perro int NOT NULL, 
    Descripcion varchar(100) NOT NULL, 
    Monto float8 NOT NULL, 
    constraint FK_Historial_Perro FOREIGN KEY (Perro) REFERENCES Perro (ID_Perro)
    );
    
# Registro de Dueños en tabla Dueno
 
insert into Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
values 
    (30483725, 'Pedro', 'Torres', '6616637', 'Peña 3667 sur, Rawson'),
    (34854921, 'Paula', 'Torres', '4856535', 'Saenz 11, capital'),
    (38458721, 'Juan', 'Ruiz', '5261524', 'Ortega 122 oeste, Rivadavia'),
    (44251788, 'Andrea', 'Weidenbacher', '6789521', 'Libertador 98 sur, Capital'),
    (38995424, 'Raul', 'Perez', '4896572', 'España 134 (e), España'),
    (40825655, 'Juan', 'Ibazeta', '5751134', 'Calivar 236, Rivadavia'),
    (28784652, 'Roberto', 'Alonso', '5411421', 'Av Rawson 2854, capital'),
    (25654442, 'Ignacio', 'Rivero', '4662345', 'Angel Rojas 112, Concepción'),
    (35455654, 'Soledad', 'Peralta', '4578256', 'Lemos 752, Pocito'),
    (33125445, 'Angela', 'Machado', '5214556', 'Alberdi 88, Rivadavia');

# Consulta registros tabla Dueno

select * from Dueno;

# Resgitros de Perros en tabla Perro
insert into Perro (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
values
    ('Jhon', '2015-11-23', 'M', 30483725),
    ('Lula', '2021-01-11', 'H', 34854921),
    ('Milu', '2018-02-10', 'H', 38458721),
    ('Bruno', '2020-10-08', 'M', 44251788),
    ('Coco', '2019-05-17', 'M', 38995424),
    ('Boby', '2016-08-18', 'M', 40825655),
    ('Laila', '2015-12-08', 'H', 28784652),
    ('Luna', '2015-08-06', 'H', 25654442),
    ('Milo', '2015-11-23', 'M', 35455654),
    ('Pancho', '2021-01-11', 'M', 33125445);

# Consulta Resgitros Tabla Perro
select * from Perro;

# Resolución punto 8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

insert into Historial ( Fecha, perro, Descripcion, Monto)
values
( ' 2022-05-10 ' , 10 , ' Consulta ' , 258.35 );

# Consulta Registros Tabla Historial
select * from Historial;
