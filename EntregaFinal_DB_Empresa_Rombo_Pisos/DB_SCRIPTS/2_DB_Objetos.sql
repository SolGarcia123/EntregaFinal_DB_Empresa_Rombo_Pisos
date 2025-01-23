USE rombo_pisos;


CREATE VIEW top10_clientes
AS SELECT
a.id_cliente AS id_cliente,
a.nombre AS nombre_cliente,
COUNT(b.id_pedido) AS cantidad_pedidos,
SUM(c.precio*c.cantidad) AS total_venta
FROM cliente a
JOIN pedido b ON a.id_cliente=b.id_cliente
JOIN producto_pedido c ON b.id_pedido=c.id_pedido
GROUP BY 
a.id_cliente,
a.nombre
ORDER BY
COUNT(b.id_pedido) DESC
LIMIT 10;

CREATE VIEW cliente_producto_comprado
AS
SELECT
a.id_cliente AS id_cliente,
b.id_producto_baldosa AS id_baldosa,
SUM(b.cantidad) as cantidad_baldosa,
SUM(b.cantidad*b.precio) AS monto_total
FROM pedido a
JOIN producto_pedido b
ON a.id_pedido=b.id_pedido
GROUP BY
a.id_cliente,
b.id_producto_baldosa
HAVING monto_total > 0
ORDER BY
a.id_cliente;

CREATE VIEW tareas_pendientes_repartidor
AS
SELECT
a.id_pedido AS id_pedido,
a.fecha_recepcion AS fecha_recepcion,
a.id_vendedor AS id_vendedor,
b.nombre AS nombre_vendedor,
a.id_repartidor AS id_repartidor,
d.nombre AS nombre_repartidor,
c.fecha_entrega_estimada AS fecha_entrega,
c.status_pedido AS status_pedido
FROM venta_control_movimiento a
JOIN vendedor b ON a.id_vendedor=b.id_vendedor
JOIN pedido c ON a.id_pedido=c.id_pedido
JOIN repartidor d ON a.id_repartidor=d.id_repartidor
WHERE c.status_pedido='pendiente';

CREATE VIEW productos_vendidos
AS
SELECT
a.empresa as empresa_proveedor,
b.referencia AS nombre_modelo_baldosa,
c.descripcion  AS color_baldosa,
d.tipo_polipropileno AS material_baldosa,
e.medida as medida_baldosa,
SUM(f.cantidad) AS cantidad_vendida
FROM proveedor a
JOIN producto_baldosa b ON a.id_proveedor=b.id_proveedor
JOIN tipo_color_baldosa c ON b.id_color=c.id_color
JOIN tipo_material_baldosa d ON b.id_material=d.id_material
JOIN tipo_size_baldosa e ON b.id_size=e.id_size
JOIN producto_pedido f ON b.id_producto_baldosa=f.id_producto_baldosa
GROUP BY
a.empresa,
b.referencia,
c.descripcion,
d.tipo_polipropileno,
e.medida
ORDER BY
SUM(f.cantidad) desc;

CREATE VIEW pedido_pago_status
AS
SELECT
b.fecha_recepcion AS fecha_recepcion,
a.id_pedido AS id_pedido,
a.status_pedido as estado,
b.metodo_pago as forma_de_pago
FROM pedido a
JOIN venta_control_movimiento b
ON a.id_pedido=b.id_pedido
ORDER BY b.fecha_recepcion DESC;

/*FUNCION calculo_monto_total_pedido*/
DROP FUNCTION IF EXISTS calculo_monto_total_pedido;
DELIMITER //
CREATE FUNCTION calculo_monto_total_pedido (id_pedido INT)
RETURNS DECIMAL(10,2)
DETERMINISTIC
BEGIN
DECLARE monto_total_pedido DECIMAL(10,2);
SELECT
SUM(a.precio*a.cantidad)
INTO monto_total_pedido
FROM producto_pedido a
WHERE a.id_pedido=id_pedido;
RETURN monto_total_pedido;
END//
DELIMITER ;

/*FUNCION promedio_ satisfaccion*/
DROP FUNCTION IF EXISTS calculo_promedio_satisfaccion;
DELIMITER //
CREATE FUNCTION calculo_promedio_satisfaccion ()
RETURNS DECIMAL(10,1)
DETERMINISTIC
BEGIN
DECLARE promedio_satisfaccion INT;
SELECT
AVG(CAST(numero_estrellas AS DECIMAL (10,1)))
INTO promedio_satisfaccion
FROM encuesta_satisfaccion;
RETURN promedio_satisfaccion;
END//
DELIMITER ;

/*FUNCION calculo_pedido_pendiente*/
DROP FUNCTION IF EXISTS calculo_pedido_pendiente;
DELIMITER //
CREATE FUNCTION calculo_pedido_pendiente ()
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE pedido_pendiente int;
SELECT
COUNT(id_pedido)
INTO pedido_pendiente
FROM pedido
WHERE status_pedido='pendiente';
RETURN pedido_pendiente;
END//
DELIMITER ;

/*FUNCION calculo_baldosas_vendidas_por_producto*/
DROP FUNCTION IF EXISTS calculo_baldosas_vendidas_por_producto;
DELIMITER //
CREATE FUNCTION calculo_baldosas_vendidas_por_producto(id_producto_baldosa INT)
RETURNS INT
DETERMINISTIC
BEGIN
DECLARE baldosas_vendidas_por_producto INT;
SELECT
SUM(a.cantidad)
INTO baldosas_vendidas_por_producto
FROM producto_pedido a
WHERE a.id_producto_baldosa=id_producto_baldosa
ORDER BY SUM(a.cantidad) DESC;
RETURN baldosas_vendidas_por_producto;
END//
DELIMITER ;

DROP PROCEDURE IF EXISTS update_status_pedido;
DELIMITER //
CREATE PROCEDURE update_status_pedido (
parametro_id_pedido INT,
parametro_status enum ('pendiente','en proceso','entregado','cancelado')
)
BEGIN
UPDATE pedido
SET status_pedido=parametro_status
WHERE id_pedido=parametro_id_pedido;

SELECT IF(ROW_COUNT()= 0, 'El id_pedido no existe','Actualizacion exitosa') AS RESULTADO;

END //
DELIMITER ;


DROP PROCEDURE IF EXISTS ordenamiento_tabla;
DELIMITER //
CREATE PROCEDURE ordenamiento_tabla
( IN parametro_tabla VARCHAR(50),
IN parametro_campo VARCHAR(50),
IN parametro_orden ENUM('ASC','DESC') )
BEGIN
 SET @sql = CONCAT('SELECT * FROM ', parametro_tabla , ' ORDER BY ', parametro_campo, ' ', parametro_orden);
  PREPARE stmt FROM @sql;
EXECUTE stmt;
DEALLOCATE PREPARE stmt;
END //
DELIMITER ;

DELIMITER $$
CREATE TRIGGER validar_pedido
BEFORE INSERT ON venta_control_movimiento
FOR EACH ROW
BEGIN
    IF NOT EXISTS (SELECT id_pedido FROM pedido WHERE id_pedido= NEW.id_pedido) THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT = 'Id_pedido no existe';
    END IF;
END$$
DELIMITER ;

DELIMITER $$
CREATE TRIGGER eliminar_pedidos_cancelados
AFTER UPDATE ON pedido 
FOR EACH ROW
BEGIN
    IF  NEW.status_pedido = 'cancelado' AND OLD.status_pedido != 'cancelado' THEN
        DELETE FROM venta_control_movimiento a WHERE a.id_pedido = OLD.id_pedido
        LIMIT 1;
    END IF;
END $$
DELIMITER ;
