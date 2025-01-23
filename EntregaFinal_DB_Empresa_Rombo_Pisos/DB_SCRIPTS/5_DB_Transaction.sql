USE rombo_pisos;
/*CASO 1*/
/*Verificar la existencia del registro*/
SELECT * FROM venta_control_movimiento
WHERE id_venta_control_movimiento=1;

/*Iniciar Transaccion*/
START TRANSACTION;

 /*Eliminar una transaccion de una tabla*/
DELETE FROM venta_control_movimiento
WHERE id_venta_control_movimiento=1;

/*En caso de deshacer el cambio*/
/*ROLLBACK;*/

/*Confirmar transaccion*/
/*COMMIT;*/


/*CASO 2*/
/*Verificar la existencia de los registros*/
SELECT * FROM vendedor;

/*Iniciar Transaccion*/
START TRANSACTION;

/*Agregar los primeros 4 registros*/
INSERT INTO vendedor (nombre, turno) VALUES
('Javier','Turno A 9.00hs a 13.30hs') ,
('Santiago','Turno A 9.00hs a 13.30hs'),
('Jonathan','Turno C 15.00hs a 20.00hs'),
('Melanie','Turno C 15.00hs a 20.00hs');

/*Guardar*/
SAVEPOINT punto4registro;

/*Agregar los ultimos 4 registros*/
INSERT INTO vendedor (nombre, turno) VALUES
('Sebastian','Turno A 9.00hs a 13.30hs') ,
('Marcela','Turno A 9.00hs a 13.30hs'),
('Sol','Turno B 13.30hs a 18.00hs'),
('Ezequiel','Turno B 13.30hs a 18.00hs');

/*Guardar*/
SAVEPOINT punto8registro;

/*Eliminar savepoint*/
/*RELEASE SAVEPOINT punto4registro;*/

/*Deshacer el cambio*/
/*ROLLBACK;*/

/*Confirmar transaccion*/
/*COMMIT;*/