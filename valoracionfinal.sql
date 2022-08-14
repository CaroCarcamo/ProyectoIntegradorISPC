create database valoracionfinal;

use valoracionfinal;

create table Dueño (
	dni int,
    Nombre_D varchar (10),
    Apellido varchar (20),
    Telefono varchar (50),
    Direccion varchar (100),
    constraint pk_cd primary key (dni)
);


Insert into Dueño (dni, Nombre_D, Apellido, Telefono, Direccion)
value (28202238, 'Eric', 'Diaz', '3794568974','laprida 2589'),
      (22658978, 'Gustavo', 'Napoleon', '2664849865', 'Scalabrini Ortiz 3452'),
      (3692587, 'Joel', 'Gomez','379865545', 'Cosquin 2354'),
      (15248632, 'Tahiel', 'Britez', 5409377212, 'Av. Corrientes 3245');
      
select * from Dueño;

-- 1) crea la tabla con su clave foranea y primaria.
create table Perro (
	ID_Perro int auto_increment,
    Nombre_Mascota varchar (30),
    Fecha_nac date,
    Sexo varchar (20),
    dni_Dueño int,
    constraint pk_cP primary key (ID_Perro),
    constraint fk_fcd foreign key (dni_Dueño) references Dueño (dni)
);

insert into Perro (Nombre_Mascota, Fecha_nac,Sexo, Dni_Dueño) 
value ('Terry', '2018-11-30', 'Hembra', 28202238 ),
      ('Jason', '2007-03-28', 'Macho', 22658978),
      ('Sony', '1994-01-15', 'Hembra', 3692587),
      ('luksemi', '2021-11-17','Macho', 15248632);

select * from Perro;

create table Historial (
	ID_Historia int auto_increment,
    Fecha date,
    Descripcion Varchar (100),
    Monto int,
    Perro int,
    constraint pk_ch primary key (ID_Historia),
    constraint fk_cpe foreign key (perro) References Perro (ID_Perro)
);

insert into Historial (Fecha, Descripcion, Monto, Perro)
value ('2022-04-15', 'mucha tos', 500, 1),
	  ('2022-04-18', 'covid.19', 1200, 2),
      ('2021-8-20', 'diarea',300, 3),
      ('2019-6-19', 'sarna',900, 4);
     

select * from Historial;

-- 2) Agregando un nuevo perro (pasiente) y su Dueño
insert into Dueño (dni, Nombre_D, Apellido, Telefono, Direccion)
value (7654321, 'Issac', 'Gomez', 3785325678, 'Av. Queti 5367');

insert into Perro (Nombre_Mascota, Fecha_nac, Sexo, Dni_Dueño) 
value ('Shiru', '2021-04-10', 'Macho', 7654321 ); 

-- 11) obtener todos los dueños que tengan perros menores de 5 años que no ayan visitado la peluqueria

select Nombre_D, Apellido, Nombre_Mascota, Fecha_nac, Fecha, Perro
from Dueño inner join Perro on Dueño.dni=Perro.dni_Dueño
inner join Historial on Historial.Perro=Perro.ID_Perro
where fecha_nac between '2018-04-15' and '2021-12-31'