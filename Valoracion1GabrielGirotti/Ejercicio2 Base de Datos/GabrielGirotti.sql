create database valoracion1ercuatrimestre;

create table dueno (
DNI int not null primary key,
Nombre varchar(100) not null,
Apellido varchar(100) not null,
Telefono varchar(100) not null,
Direccion varchar(100) not null
 );

create table Perro (
ID_Perro int not null auto_increment primary key,
Nombre varchar(100) not null,
Fecha_Nac date not null,
Sexo varchar(100) not null,
DNI_Dueno int not null,
foreign key (DNI_Dueno) references dueno(DNI)
 );
 
 create table Historial (
ID_Historial int not null auto_increment primary key,
Fecha date not null,
Perro int not null,
Descripcion varchar(100),
Monto int not null,
foreign key (Perro) references Perro(ID_Perro)
 );
 
 insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
 values 
 (32455678, 'Juan', 'Perez', '751134', 'Castelli 43'),
  (45622782, 'Carlos', 'Gonzalez', '357834', 'Parana 643'),
   (29023455, 'Martin', 'Chavez', '334622', 'Luro 2254'),
    (31433281, 'Sara', 'Conor', '556277', 'Misiones 23');
    
    
insert into perro (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
values
('Coqui', '2020-10-23', 'Macho', 32455678),
('Lolo', '2021-02-01', 'Macho', 45622782),
('Piltrafa', '2001-11-23', 'Macho', 29023455),
('Pilin', '2021-02-21', 'Hembra', 31433281);

select * from perro;

insert into dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
 values 
    (34783201, 'Pedro', 'Ramon', '443370', 'Lavalle 1029');
    
insert into perro (Nombre, Fecha_Nac, Sexo, DNI_Dueno)
values
('Copito', '2020-07-01', 'Hembra', 34783201);

select * from dueno;
select * from perro;

delete from perro where Nombre="Coqui";
select * from perro;

update perro set Fecha_Nac='2021-02-10'
where Nombre='Lolo';

select * from perro;


select * from perro, dueno where perro.DNI_Dueno=dueno.DNI and dueno.nombre='Pedro';

select A.nombre from perro as A inner join dueno as B on A.DNI_Dueno=B.DNI and B.nombre='Pedro';





    