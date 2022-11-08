USE eulogio_montijano;

/* RELACIONES DE EMPLEADOS */
-- tipo de rol --
ALTER TABLE empleados 
ADD CONSTRAINT FK_cod_tipo_rol
FOREIGN KEY (tipo_rol) 
REFERENCES rol(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

-- tipo de empresa --
ALTER TABLE empleados 
ADD CONSTRAINT FK_cod_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIOES DE TRABAJOS */
 
 -- TIPO DE EMPLEADO --
ALTER TABLE trabajos 
ADD CONSTRAINT FK_cod_trabajo_id
FOREIGN KEY (id_empleado) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
 
 /* RELACIONES VEHICULOS */
 
 -- tipo de empresa --
 ALTER TABLE vehiculos 
ADD CONSTRAINT FK_cod_vehiculo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES HORAS */

-- tipo de vehiculo --

ALTER TABLE horas 
ADD CONSTRAINT FK_cod_vehiculo_horas
FOREIGN KEY (id_vehiculo) 
REFERENCES vehiculos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES REVISIONES */

-- tipo vehiculo --
ALTER TABLE revisiones 
ADD CONSTRAINT FK_cod_revisiones_vehiculo
FOREIGN KEY (id_vehiculo) 
REFERENCES vehiculos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo revision --
ALTER TABLE revisiones 
ADD CONSTRAINT FK_cod_revisiones_tipo_revision
FOREIGN KEY (id_tipo_revision) 
REFERENCES tipo_revision(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo empresa --
ALTER TABLE revisiones 
ADD CONSTRAINT FK_cod_revisiones_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
 -- tipo usuario --
 ALTER TABLE revisiones 
ADD CONSTRAINT FK_cod_revisiones_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACION PROXIMA REVISION */

-- relacion vehiculo --
ALTER TABLE proxima_revision 
ADD CONSTRAINT FK_cod_prox_revision
FOREIGN KEY (id_vehiculo) 
REFERENCES vehiculos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES DE REPARACIONES */

-- tipo vehiculo --
ALTER TABLE reparaciones 
ADD CONSTRAINT FK_cod_reparaciones_vehiculo
FOREIGN KEY (id_vehiculo) 
REFERENCES vehiculos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo piezas --
ALTER TABLE reparaciones 
ADD CONSTRAINT FK_cod_reparaciones_piezas
FOREIGN KEY (id_piezas) 
REFERENCES piezas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo usuario --
 ALTER TABLE reparaciones 
ADD CONSTRAINT FK_cod_reparaciones_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo empresa --
ALTER TABLE reparaciones 
ADD CONSTRAINT FK_cod_reparaciones_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES ENTRADA DE ACEITES O SALIDA */

-- tipo aceite --
ALTER TABLE aceite_entr_sal 
ADD CONSTRAINT FK_cod_tipo_aceite
FOREIGN KEY (id_aceite) 
REFERENCES aceites(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo usuario --
 ALTER TABLE aceite_entr_sal 
ADD CONSTRAINT FK_cod_aceite_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo empresa --
ALTER TABLE aceite_entr_sal 
ADD CONSTRAINT FK_cod_aceites_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACION BIDON DE RECICLAJE */

-- tipo usuario --
 ALTER TABLE bidon_reciclado
ADD CONSTRAINT FK_cod_bidon_recicle_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACION BIDON DE GASOIL */

-- tipo usuario --
 ALTER TABLE bidon_gasoil
ADD CONSTRAINT FK_cod_bidon_gasoil_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

-- tipo vehiculo --
 ALTER TABLE gasoil
ADD CONSTRAINT FK_cod_gasoil_tipo_vehiculo
FOREIGN KEY (id_vehiculo) 
REFERENCES vehiculos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
 -- tipo usuario --
 ALTER TABLE gasoil
ADD CONSTRAINT FK_cod_gasoil_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACION  DIAS DE  RIEGO */

-- tipo de riego --
ALTER TABLE dias_riego
ADD CONSTRAINT FK_cod_riego_tipo
FOREIGN KEY (id_riego) 
REFERENCES riego(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES FITO */

-- tipo composicon --
ALTER TABLE fitos
ADD CONSTRAINT FK_cod_fito_composicion
FOREIGN KEY (id_composicion) 
REFERENCES composicion(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo tipo --
ALTER TABLE fitos
ADD CONSTRAINT FK_cod_fito_tipo
FOREIGN KEY (id_tipo) 
REFERENCES tipo(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES ENTRADA O SALIDA FITOS */

-- tipo fito --
 ALTER TABLE fito_entr_sal 
ADD CONSTRAINT FK_cod_entra_fito
FOREIGN KEY (id_fito) 
REFERENCES fitos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo empresa --
ALTER TABLE fito_entr_sal 
ADD CONSTRAINT FK_cod_entra_fito_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo envase --
ALTER TABLE fito_entr_sal 
ADD CONSTRAINT FK_cod_entrafito_tipo_envase
FOREIGN KEY (id_tipo_envase) 
REFERENCES envases(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo usuario --
 ALTER TABLE fito_entr_sal 
ADD CONSTRAINT FK_cod_entrafito_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo empresa --
ALTER TABLE fito_entr_sal 
ADD CONSTRAINT FK_cod_entrafito_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES DE TRATAMIENTOS */

-- tipo de usuario --
 ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_tratamiento_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo de empresa --
ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_tratamiento_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo producto 1 --
ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_producto1_tipo_fito
FOREIGN KEY (id_producto1) 
REFERENCES fitos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo producto 2 --
ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_producto2_tipo_fito
FOREIGN KEY (id_producto2) 
REFERENCES fitos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo producto 3 --
ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_producto3_tipo_fito
FOREIGN KEY (id_producto3) 
REFERENCES fitos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo producto 4 --
ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_producto4tipo_fito
FOREIGN KEY (id_producto4) 
REFERENCES fitos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo de naranjos -- 
ALTER TABLE tratamientos 
ADD CONSTRAINT FK_cod_tratamiento_tipo_naranjos
FOREIGN KEY (id_naranjos) 
REFERENCES naranjos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES DE FITO A RECICLAR */

-- tipo de fitos --
ALTER TABLE fito_reciclaje 
ADD CONSTRAINT FK_cod_fito_recla_tipo_fitos
FOREIGN KEY (id_fitos) 
REFERENCES fitos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

ALTER TABLE fito_reciclaje 
ADD CONSTRAINT FK_cod_fito_recla_tipo_envase
FOREIGN KEY (id_tipo_envase) 
REFERENCES envases(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES  ENTRADA DE ENVASES */

-- tipo de camion --
ALTER TABLE entradaEnvases 
ADD CONSTRAINT FK_cod_envases_tipo_camion
FOREIGN KEY (id_camion) 
REFERENCES camiones(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo de envases --
ALTER TABLE entradaEnvases 
ADD CONSTRAINT FK_cod_envases_tipo_envases
FOREIGN KEY (id_envase) 
REFERENCES envases(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES DE SALIDA DE NARANJAS */

-- tipo de naranjas --
ALTER TABLE naranjasSalida 
ADD CONSTRAINT FK_cod_salida_naranja_tipo_naranjos
FOREIGN KEY (id_naranjos) 
REFERENCES naranjos(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo de camion --
ALTER TABLE naranjasSalida
ADD CONSTRAINT FK_cod_salida_naranja_tipo_camion
FOREIGN KEY (id_camion) 
REFERENCES camiones(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo de tratorista --
ALTER TABLE naranjasSalida
ADD CONSTRAINT FK_cod_salida_naranja_usuario
FOREIGN KEY (id_tractorista) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo de envase --
ALTER TABLE naranjasSalida
ADD CONSTRAINT FK_cod_salida_naranja_envases
FOREIGN KEY (id_envases) 
REFERENCES envases(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;

/* RELACIONES DE ALERTA */

-- tipo usuario --
ALTER TABLE alertas
ADD CONSTRAINT FK_cod_alertas_tipo_usuario
FOREIGN KEY (id_usuario) 
REFERENCES empleados(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;
-- tipo empresa --
ALTER TABLE alertas 
ADD CONSTRAINT FK_cod_alertas_tipo_empresa
FOREIGN KEY (id_empresa) 
REFERENCES fincas(id) 
ON DELETE SET NULL
ON UPDATE CASCADE;