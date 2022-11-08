/*
* Author Jose Santos
* Created 04 Octubre 2022
*/
-- BORRAMOS LA BD SI EXISTE 
DROP DATABASE IF EXISTS eulogio_montijano;

-- CREAMOS UNA NUEVA BD
CREATE DATABASE eulogio_montijano DEFAULT CHARACTER SET utf8 COLLATE utf8_spanish_ci;
USE eulogio_montijano;

/* CREAMOS LAS TABLAS*/
-- tabla fincas --
create table fincas(
id int auto_increment  primary key,
nombre varchar(10) not null UNIQUE,
localidad varchar(10),
activa boolean
);
 
 -- tabla rol --
 create table rol(
 id int auto_increment  primary key,
 tipo_rol varchar(5)
 );
 
 -- tabla profesiones --
 create table profesiones(
 id int auto_increment  primary key,
 profesion varchar(10)
 );
 
 -- tabla empleados --
 create table empleados(
 id int auto_increment  primary key,
 dni varchar(30) UNIQUE,
 contraseña varchar(20) not null,
 nombre varchar(20) not null,
 apellidos varchar(30) not null,
 direccion varchar(30) not null,
 provincia varchar(20) not null,
 localidad varchar(20) not null,
 profesion varchar(15) not null,
 telefono varchar(20),
 email varchar(30),
 tipo_rol int,
 id_empresa int,
   estado boolean
   );
   
   -- tabla de trabajos --
    create table trabajos(
	id int auto_increment  primary key,
	id_empleado int,
	fecha date,
	trabajo varchar(40),
	horas float,
	observaciones varchar(100)
	);
   
-- tabla vehiculos --
  create table vehiculos(
  id int auto_increment  primary key,
  matricula varchar(10),
  nombre varchar(5),
  modelo varchar(5),
  alias VARCHAR (5),
  id_empresa int
  );
  
  -- tabla de horas --
  create table horas(
  id int auto_increment  primary key,
  id_vehiculo int,
  horas float,
  fecha DATE
  );
  
  -- tabla tipoRevision --
  create table tipo_revision(
  id int auto_increment  primary key,
  aceite FLOAT,
  hidraulico FLOAT,
  filt_aire BOOLEAN,
  filt_polen BOOLEAN,
  filt_gasoil BOOLEAN,
  filt_aceite BOOLEAN,
  filt_hiraulico BOOLEAN,
  hidra_delantero FLOAT,
  hidra_trasero FLOAT,
  hidra_masas FLOAT,
  hidra_grupo_delant FLOAT,
  hidra_caja_cambio FLOAT
  );
  
  -- tabla revisiones --
  create table revisiones(
  id int auto_increment  primary key,
  id_vehiculo int,
  id_tipo_revision int,
  kilometros_revision FLOAT,
  fecha_revision DATE,
  id_usuario int,
  id_empresa int
  );
  
  -- tabla proximas revisiones --
  create table proxima_revision(
  id int auto_increment  primary key,
  id_vehiculo int,
  tipo_revision VARCHAR (20),
  kilometros FLOAT,
  fecha date,
  realizada BOOLEAN,
  fecha_inscripcion DATE
  );
  
  -- tabla de reparaciones --
  create table reparaciones(
  id int auto_increment  primary key,
  id_vehiculo int,
    id_piezas int,
	pieza_vieja LONGBLOB,
	pieza_nueva LONGBLOB,
	id_usuario int,
	id_empresa int
  );

  
  -- tablas de piezas --
   create table piezas(
  id int auto_increment  primary key,
  referencia varchar(5),
  nombre varchar(10),
  procedencia varchar(5),
  precio FLOAT,
  observaciones varchar(20),
  imagen LONGBLOB
  );
  -- tabla de aceites --
  create table aceites(
  id int auto_increment  primary key,
  nombre VARCHAR(10),
  composicion VARCHAR(10),
  envase FLOAT,
  litros FLOAT
  );
  
  
  -- tabla de entrada salida --
  create table aceite_entr_sal(
  id int auto_increment  primary key,
  id_aceite int,
  entra_sale VARCHAR(5),
  id_usuario int,
  id_empresa int
  );
  
  -- tabla de aceite de reciclado --
  create table bidon_reciclado(
  id int auto_increment  primary key,
  litros_intro float,
  id_vehiculo int,
  id_usuario int,
  fecha date
  );
  
  -- tabla del gasoil --
  create table bidon_gasoil(
  id int auto_increment  primary key,
  litros_intro float,
  fecha DATE,
  id_usuario int,
  litros_hay float,
  diferencia_litros float
  );
  -- salida gasoil --
  create table gasoil(
  id int auto_increment  primary key,
  id_vehiculo int,
  litros float,
  trabajo VARCHAR (10),
  id_usuario int
  );
   -- riego --
   create table riego(
   id int auto_increment  primary key,
   nombre VARCHAR(5),
   dotacion FLOAT
   );
   
   -- tabla de dias de riego --
   create table dias_riego(
   id int auto_increment  primary key,
   id_riego int,
   incio DATE,
   final DATE,
   consumo FLOAT,
   queda FLOAT,
   imagen LONGBLOB
   );
   
   -- tabla de fitosanitarios --
   create table fitos(
   id int auto_increment  primary key,
   referenci VARCHAR(10),
   nombre VARCHAR(5),
   id_composicion int,
   id_tipo int,
   activo FLOAT,
   imagen LONGBLOB
   );
   
   -- tabla tipo --
   create table tipo(
   id int auto_increment  primary key,
   tipo VARCHAR(5)
   );
   
   -- tabla composicion --
   create table composicion(
   id int auto_increment  primary key,
   composicion VARCHAR(10),
   porcentaje FLOAT
   );
   
   -- tabla entrada salida --
   create table fito_entr_sal(
   id int auto_increment  primary key,
   id_fito int,
    fecha DATE,
    caducidad DATe,
	id_tipo_envase int,
	litros float,
	entra_sale VARCHAR(5),
	id_usuario int,
	id_empresa int
   );
   -- envases --
   create table envases (
    id int auto_increment  primary key,
	tipo VARCHAR(5)
   );
   -- tabla tratamientos --
    create table tratamientos(
	id int auto_increment  primary key,
	id_usuario int,
	referencia VARCHAR(10),
	id_empresa int,
	fecha_inicio date,
	fecha_final date,
	cuba float,
	atomizador float,
	mochila float,
	motivo_tratamiento VARCHAR(20),
	numero_tratamiento int,
	id_producto1 int,
	cantidad1 float,
	litos_hectarea1 float,
	total1 float,
	id_producto2 int,
	cantidad2 float,
	litos_hectarea2 float,
	total2 FLOAT,
	id_producto3 int,
	cantidad3 float,
	litos_hectarea3 float,
	total3 FLOAT,
	id_producto4 int,
	cantidad4 float,
	litos_hectarea4 float,
	total4 float,
	numero_maquinas float,
	hectareas float,
	id_naranjos int,
		imagen LONGBLOB,
	observaciones VARCHAR(30)
	);
	
	-- tabla envase a reciclar --
	 create table fito_reciclaje(
	 id int auto_increment  primary key,
	 id_fitos int,
	 fecha DATE,
	 id_tipo_envase int,
	 capacidad float
	 );
	 
	 -- tabla de naranjas --
	  create table naranjos(
	  id int auto_increment  primary key,
	  nombre VARCHAR(5),
	  sector VARCHAR(5),
	  hectareas float,
	  cantidad_naranjos float
	  );
	  
	  
	   
	   -- camiones --
	   create table camiones (
	   id int auto_increment  primary key,
	   fecha DATE,
	   matricula VARCHAR(5),
	   remolque VARCHAR(5),
	   imagen_cabeza LONGBLOB,
	   imagen_remolque LONGBLOB
	   );
	   -- tabla entrada envases ---
	    create table entradaEnvases (
	   id int auto_increment  primary key,
	   fecha date,
	   id_camion int,
	   cantiad float,
	   id_envase int,
	   tablas float
	   );
	   -- tabla de salida  de naranjas --
	    create table naranjasSalida  (
		id int auto_increment  primary key,
		fecha DATE,
		id_camion int,
		id_tractorista int,
		id_envases int,
		tablas float,
		id_naranjos int,
		filas float,
		manijero VARCHAR(10),
		cuadrilla VARCHAR(10),
		cargador VARCHAR(10),
		observaciones VARCHAR(30)
		);
	   
	   -- tabla de temperaturas --
	    create table temperaturas (
		id int auto_increment  primary key,
         fecha date,
		 maxima float, 
		 minima float
		 );
		
		-- tabla de pluviometro --
		 create table pluviometro (
		 id int auto_increment  primary key,
         fecha date,
	     litros float
		 );
		 
		 -- tabla de alertas --
		  create table alertas (
		  id int auto_increment  primary key,
		  nombre_alerta VARCHAR(20),
		  fecha DATE,
		  accion VARCHAR(20),
		  id_usuario int,
		  id_empresa int,
		  realizada BOOLEAN
		  );