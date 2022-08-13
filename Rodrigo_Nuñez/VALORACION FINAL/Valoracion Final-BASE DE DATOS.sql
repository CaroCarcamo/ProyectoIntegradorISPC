create database modulo
use modulo
--Tabla Dueño
create table dueno(
  DNI_d int,
  nombre_d varchar (50),
  apellido_d varchar (50),
  telefono_d bigint,
  direccion_d varchar (50),
  constraint pk_cd primary key (DNI_d)
  )
  --Tabla Perro  
  --  1) Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
  create table perro(
    id_p int,
    nombre_p varchar (50),
    fechaNac_p date (dmy),
    sexo_p varchar (50),
    DNI_d1 int,
    constraint pk_cp primary key(id_p),
    constraint fk_fd1 foreign key(DNI_d1) references dueno (DNI_d)
    )
	--Tabla Historial
    create table historial(
      id_h int,
      fecha_h datetime,
      id_p1 int,
      descripcion_h varchar(50),
      monto_h float,
      constraint pk_ch primary key(id_h),
      constraint fk_fp1 foreign key(id_p1) references perro (id_p)
      )
	  -- BASES DE DATOS DUENOS
	  insert into dueno 
	  values
	  (35641723,'rodrigo','nuñez',2615766009,'alsina 437 dorrego')
	  insert into dueno 
	  values
	  (18190775,'natalia','soria',2615007610,'ingniero krause 235'),
	  (33911702,'romina','carioca',261507689,'rufino ortega 287')

	  -- 2)Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
	  -- BASES DE DATOS perro
	  set dateformat dmy;
	  insert into perro values(01,'tomy','13/08/2022','macho',35641723)
	  insert into perro values(02,'nina','05/09/2020','macho',33911702)
	  insert into perro values(03,'mora','11/06/2012','hembra',18190775)

	  --BASES DE DATOS historial
	  insert into historial values(01,'15/09/2020',01,'vacuna antirabia',1500)
	  insert into historial values(02,'10/01/2021',03,'radiografia',4500)
	  insert into historial values(03,'24/06/2022',02,'atencion comun',1200)

	  -- 9) Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
	  update dueno 
	  set direccion_d='Libertad 123'
	  where  DNI_d=35641723

	
	  select * from dueno
	  select * from perro
	  select * from historial
