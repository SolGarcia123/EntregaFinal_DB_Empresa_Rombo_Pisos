DROP DATABASE IF EXISTS rombo_pisos;
CREATE DATABASE rombo_pisos ;
USE rombo_pisos;

CREATE TABLE encuesta_satisfaccion(
id_encuesta INT NOT NULL AUTO_INCREMENT,
numero_estrellas ENUM ('0','1','2','3','4','5'),
comentario VARCHAR (50) DEFAULT NULL,
PRIMARY KEY (id_encuesta)
);
CREATE TABLE tipo_color_baldosa (
id_color INT NOT NULL AUTO_INCREMENT,
descripcion VARCHAR(50) NOT NULL,
PRIMARY KEY (id_color)
);
CREATE TABLE tipo_size_baldosa (
id_size  INT NOT NULL AUTO_INCREMENT,
tipo VARCHAR(50) NOT NULL,
medida VARCHAR(50) NOT NULL,
PRIMARY KEY (id_size)
);

CREATE TABLE proveedor(
id_proveedor  INT NOT NULL AUTO_INCREMENT,
empresa VARCHAR(50) NOT NULL,
contacto VARCHAR(50) NOT NULL,
PRIMARY KEY (id_proveedor)
);

CREATE TABLE tipo_material_baldosa (
id_material  INT NOT NULL AUTO_INCREMENT,
tipo_polipropileno ENUM ('virgen','reciclado') DEFAULT 'virgen',
PRIMARY KEY (id_material)
);

CREATE TABLE cliente (
id_cliente INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) DEFAULT NULL,
celular VARCHAR(50)  NOT NULL,
direccion VARCHAR(50) NOT NULL,
id_encuesta INT NOT NULL,
PRIMARY KEY (id_cliente)
);

ALTER TABLE cliente
ADD CONSTRAINT fk_encuesta_cliente
FOREIGN KEY (id_encuesta) REFERENCES encuesta_satisfaccion (id_encuesta);

CREATE TABLE producto_baldosa (
id_producto_baldosa INT NOT NULL AUTO_INCREMENT,
referencia VARCHAR(50) NOT NULL,
id_color INT NOT NULL,
id_size INT NOT NULL,
id_material INT NOT NULL,
id_proveedor INT NOT NULL,
PRIMARY KEY (id_producto_baldosa));
ALTER TABLE producto_baldosa
ADD CONSTRAINT fk_proveedor_producto_baldosa
FOREIGN KEY (id_proveedor) REFERENCES proveedor (id_proveedor);
ALTER TABLE producto_baldosa
ADD CONSTRAINT fk_color_producto_baldosa
FOREIGN KEY (id_color) REFERENCES tipo_color_baldosa (id_color);
ALTER TABLE producto_baldosa
ADD CONSTRAINT fk_size_producto_baldosa
FOREIGN KEY (id_size) REFERENCES tipo_size_baldosa (id_size);
ALTER TABLE producto_baldosa
ADD CONSTRAINT fk_material_producto_baldosa
FOREIGN KEY (id_material) REFERENCES tipo_material_baldosa (id_material);

CREATE TABLE vendedor(
id_vendedor  INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(50) NOT NULL,
turno VARCHAR(50) NOT NULL,
PRIMARY KEY (id_vendedor));

CREATE TABLE transporte (
id_transporte  INT NOT NULL AUTO_INCREMENT,
modelo VARCHAR(50) NOT NULL,
capacidad VARCHAR(50) NOT NULL,
PRIMARY KEY (id_transporte));

CREATE TABLE repartidor(
id_repartidor INT NOT NULL AUTO_INCREMENT,
id_transporte INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
celular VARCHAR(50) NOT NULL,
PRIMARY KEY (id_repartidor));
ALTER TABLE repartidor
ADD CONSTRAINT fk_transporte_repartidor
FOREIGN KEY (id_transporte) REFERENCES transporte (id_transporte);


CREATE TABLE pedido (
id_pedido INT NOT NULL AUTO_INCREMENT,
id_cliente INT NOT NULL,
fecha_entrega_estimada DATE NOT NULL,
status_pedido ENUM ('pendiente','en proceso','entregado','cancelado') DEFAULT 'pendiente',
PRIMARY KEY (id_pedido));
ALTER TABLE pedido
ADD CONSTRAINT fk_cliente_pedido
FOREIGN KEY (id_cliente) REFERENCES cliente (id_cliente);


CREATE TABLE producto_pedido (
id_producto_pedido INT NOT NULL AUTO_INCREMENT,
id_pedido INT NOT NULL,
id_producto_baldosa INT NOT NULL,
precio DECIMAL(10,2) NOT NULL,
cantidad INT NOT NULL,
PRIMARY KEY (id_producto_pedido));
ALTER TABLE producto_pedido
ADD CONSTRAINT fk_producto_pedido
FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido);
ALTER TABLE producto_pedido
ADD CONSTRAINT fk_producto_baldosa_pedido
FOREIGN KEY (id_producto_baldosa) REFERENCES producto_baldosa (id_producto_baldosa);

CREATE TABLE venta_control_movimiento (
id_venta_control_movimiento INT NOT NULL AUTO_INCREMENT,
id_vendedor INT NOT NULL,
fecha_recepcion DATE DEFAULT (current_timestamp) ,
id_repartidor INT NOT NULL,
metodo_pago ENUM ('efectivo','transferencia','debito') DEFAULT 'efectivo',
id_pedido INT NOT NULL,
PRIMARY KEY (id_venta_control_movimiento));
ALTER TABLE venta_control_movimiento
ADD CONSTRAINT fk_vendedor_control_movimiento
FOREIGN KEY (id_vendedor) REFERENCES vendedor (id_vendedor);
ALTER TABLE venta_control_movimiento
ADD CONSTRAINT fk_repartidor_control_movimiento
FOREIGN KEY (id_repartidor) REFERENCES repartidor (id_repartidor);
ALTER TABLE venta_control_movimiento
ADD CONSTRAINT fk_pedido_control_movimiento
FOREIGN KEY (id_pedido) REFERENCES pedido (id_pedido);